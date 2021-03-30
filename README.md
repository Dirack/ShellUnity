# shellUnity

> Framework de testes unitários para Shell Script

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

<img src="https://github.com/Dirack/shellUnity/blob/main/res/superuser-superhero.jpg" width="500">

Esta biblioteca em Shell Script contém um conjunto de funções para teste unitário de scripts. São funções
básicas para verificar igualdade entre variáveis do Shell e strings, bem como verificar se arquivos e diretórios
existem e etc.
Para utilizar a shellUnity basta instalar a biblioteca e
depois adicionar o seguinte comando ao início dos seus scripts de teste:

```sh
source $SHELLUNITY_PATH/shellUnity
```

A saída esperada de um teste da shellUnity é:

```sh
./test_example.sh 
./test_example.sh:24:INFO: Mensagem qualquer
./test_example.sh:27:TEST_ASSERT_EQUAL:PASS
./test_example.sh:28:TEST_PASS:PASS
./test_example.sh:29:PASS: Mensagem passou
./test_example.sh:29:TEST_PASS_MESSAGE:PASS
./test_example.sh:30:TEST_ASSERT_NOT_EQUAL:PASS
./test_example.sh:31:TEST_ASSERT_TRUE:PASS
./test_example.sh:32:TEST_ASSERT_FALSE:PASS
./test_example.sh:33:TEST_ASSERT_EQUAL_STRING:PASS
./test_example.sh:36:INFO: TESTES IGNORADOS
./test_example.sh:38:TEST_PASS:IGNORED
./test_example.sh:39:TEST_FAIL:IGNORED
./test_example.sh:43:TEST_ASSERT_EQUAL:FAIL
./test_example.sh:44:TEST_FAIL:FAIL
./test_example.sh:45:FAIL: Mensagem falhou
./test_example.sh:45:TEST_FAIL_MESSAGE:FAIL
./test_example.sh:46:TEST_ASSERT_NOT_EQUAL:FAIL
./test_example.sh:47:TEST_ASSERT_TRUE:FAIL
./test_example.sh:48:TEST_ASSERT_FALSE:FAIL
./test_example.sh:49:TEST_ASSERT_EQUAL_STRING:FAIL

-----------------------
16 Tests 7 Failures 2 Ignored
FAIL
```

## Instalação

* Rodar o script configure para configurar
as variáveis de ambiente passando como argumento o local onde
será instalada a biblioteca, exemplo:

```sh    
~$ ./configure $HOME
```

Para instalar a shellUnity em $HOME.

O Script configure irá gerar um 'Makefile' de instalação tomando o arquivo 'Makefile.in' como
template. As variáveis de ambiente serão escritas em 'env.sh'. Uma linha será adicionada ao
arquivo $HOME/.bashrc para carregar as variáveis definidas em 'env.sh'.

* Para concluir a instalação em $HOME, basta rodar o comando:

```sh
~$ make install
```

## Sobre

Rodolfo Dirack – [@dirack](https://github.com/Dirack) – rodolfo_profissional@hotmail.com

Distribuído sob a licença GPL3. Veja `LICENSE` para mais informações.

[shellUnity main page](https://github.com/Dirack/shellUnity)

## Contribuição

1. Faça o _fork_ do projeto (<https://github.com/Dirack/shellUnity/fork>)
2. Crie uma _branch_ para sua modificação (`git checkout -b feature/suaFeature`)
3. Faça o _commit_ (`git commit -am 'Add some fooBar'`)
4. _Push_ (`git push origin feature/fooBar`)
5. Crie um novo _Pull Request_

[Para uma explicação detalhada, visite a página Contribua do nosso wiki](https://github.com/Dirack/Shellinclude/wiki/Contribua)

#### Importante: O histórico de suas modificações deve ser claro, com mensagens de commit de um a dois parágrafos descrevendo cada modificação. _Pull Requests_ com histórico de commits insuficiente serão rejeitados.
