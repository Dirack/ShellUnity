#!/bin/bash
#
# test_file.sh (Shell Script)
# 
# Objetivo: Exemplos de testes unitários de arquivos e diretórios da shellUnity.
# 
# Site: https://dirack.github.io
# 
# Versão 1.0
# 
# Programador: Rodolfo A C Neves (Dirack) 30/03/2021
# 
# Email: rodolfo_profissional@hotmail.com
# 
# Licença: GPL-3.0 <https://www.gnu.org/licenses/gpl-3.0.txt>.

source ../src/shellunity

TMPFILE="/tmp/shellUnity_teste.txt"
TMPEMPTYFILE="/tmp/shellUnity_empty.txt"
echo "Arquivo temporário para testes" > "$TMPFILE"
touch "$TMPEMPTYFILE"

REMOVE_TMP(){
	rm "$TMPFILE" "$TMPEMPTYFILE"
}

TEST_MESSAGE "Testes de funções para arquivos e diretórios"

######## Estes testes irão passar ##########

# Verificar se arquivos e diretórios existem
TEST_FILE_FIND "test_file.sh"
TEST_DIR_FIND "$PWD"

# Verificar permissões de arquivos
TEST_FILE_X "test_file.sh"
TEST_FILE_R "test_file.sh"
TEST_FILE_W "test_file.sh"

# Verificar se a stream de dados passada é um terminal
TEST_ISATTY "0"
TEST_ISATTY "1"
TEST_ISATTY "2"

# Verificar se o arquivo é mais velho, mais novo e se é igual
TEST_FILE_NEWER "$TMPFILE" "test_file.sh"
TEST_FILE_OLDER "test_file.sh" "$TMPFILE"
TEST_FILE_EQUAL "$TMPFILE" "$TMPFILE"

# Verificar arquivo vazio
TEST_FILE_EMPTY "$TMPEMPTYFILE"

####### Estes testes irão falhar ##########

# Verificar se arquivos e diretórios existem
TEST_FILE_FIND  "naoExisteFile.txt"
TEST_DIR_FIND "naoExisteDir"

# Verificar permissões de arquivos
chmod -xrw "$TMPFILE"
TEST_FILE_X "$TMPFILE"
TEST_FILE_R "$TMPFILE"
TEST_FILE_W "$TMPFILE"
chmod +xrw "$TMPFILE"

# Verificar se a stream de dados passada é um terminal
exec 6<"$TMPFILE"
TEST_ISATTY "$TMPFILE"
TEST_ISATTY "6"
TEST_ISATTY "/dev/null"
6<&-

# Verificar se o arquivo é mais velho, mais novo e se é igual
TEST_FILE_NEWER "test_file.sh" "$TMPFILE"
TEST_FILE_OLDER "$TMPFILE" "test_file.sh"
TEST_FILE_EQUAL "$TMPFILE" "test_file.sh"

# Verificar arquivo vazio
TEST_FILE_EMPTY "$TMPFILE"


#### Remover arquivos temporários
REMOVE_TMP
