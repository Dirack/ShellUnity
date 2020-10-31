#!/bin/bash

source shellUnity

soma(){
	RES=$(echo "$1+$2" | bc -l)
	echo "$RES"
}

TEST_MESSAGE "Mensagem qualquer"

# Estes testes irão passar
TEST_ASSERT_EQUAL 10 "$(soma 1 9)"
TEST_PASS
TEST_PASS_MESSAGE "Mensagem passou"

# Estes testes irão falhar
TEST_ASSERT_EQUAL 2 "$(soma 1 2)"
TEST_FAIL
TEST_FAIL_MESSAGE "Mensagem falhou"
