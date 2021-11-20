#!/bin/bash
#
# test_example.sh (Shell Script)
# 
# Objetivo: Exemplos de testes unitários básicos da shellUnity.
# 
# Site: https://dirack.github.io
# 
# Versão 1.0
# 
# Programador: Rodolfo A C Neves (Dirack) 30/10/2020
# 
# Email: rodolfo_profissional@hotmail.com
# 
# Licença: GPL-3.0 <https://www.gnu.org/licenses/gpl-3.0.txt>.

source shellunity

soma(){
	RES=$(echo "$1+$2" | bc -l)
	echo "$RES"
}

TEST_MESSAGE "Mensagem qualquer"

# Estes testes irão passar
TEST_ASSERT_EQUAL 10 "$(soma 1 9)"
TEST_PASS
TEST_PASS_MESSAGE "Mensagem passou"
TEST_ASSERT_NOT_EQUAL 10 9
TEST_ASSERT_TRUE "2==2"
TEST_ASSERT_FALSE "2==3"
TEST_ASSERT_EQUAL_STRING "Rodolfo" "Rodolfo"

# Estes testes serão ignorados
TEST_MESSAGE "TESTES IGNORADOS"
TEST_IGNORE on # Ligar a chave para ignorar testes
TEST_PASS
TEST_FAIL
TEST_IGNORE off # Desligar a chave para ignorar testes

# Estes testes irão falhar
TEST_ASSERT_EQUAL 2 "$(soma 1 2)"
TEST_FAIL
TEST_FAIL_MESSAGE "Mensagem falhou"
TEST_ASSERT_NOT_EQUAL 10 10
TEST_ASSERT_TRUE "2==1"
TEST_ASSERT_FALSE "2==2"
TEST_ASSERT_EQUAL_STRING "Rodolfo" "Dirack"
