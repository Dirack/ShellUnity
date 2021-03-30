#!/bin/bash

source $SHELLUNITY_PATH/shellUnity

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
