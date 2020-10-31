#!/bin/bash

source shellUnity

soma(){
	RES=$(echo "$1+$2" | bc -l)
	echo "$RES"
}


# Estes teste irá passar
TEST_ASSERT_EQUAL 10 "$(soma 1 9)"

# Este teste irá falhar
TEST_ASSERT_EQUAL 2 "$(soma 1 2)"
