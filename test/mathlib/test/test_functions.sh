source ../../../src/shellunity
source ../functions.sh

TEST_ASSERT_EQUAL 23 $(soma 20 3)
TEST_ASSERT_EQUAL 2.5 $(soma 2 0.5)
TEST_ASSERT_EQUAL_STRING "Error: Missing parameters" "$(soma)"
TEST_ASSERT_EQUAL_STRING "Error: Missing parameters" "$(soma 2)"

TEST_ASSERT_EQUAL 30 $(mult 10 3)
TEST_ASSERT_EQUAL 5 $(mult 2 2.5)
TEST_ASSERT_EQUAL_STRING "Error: Missing parameters" "$(mult)"
TEST_ASSERT_EQUAL_STRING "Error: Missing parameters" "$(mult 2)"

TEST_ASSERT_EQUAL 10 $(div 30 3)
TEST_ASSERT_EQUAL 2.5 $(div 5 2)
TEST_ASSERT_EQUAL_STRING "Error: Missing parameters" "$(div)"
TEST_ASSERT_EQUAL_STRING "Error: Missing parameters" "$(div 2)"

TEST_ASSERT_EQUAL 27 $(sub 30 3)
TEST_ASSERT_EQUAL 2.5 $(sub 5 2.5)
TEST_ASSERT_EQUAL_STRING "Error: Missing parameters" "$(sub)"
TEST_ASSERT_EQUAL_STRING "Error: Missing parameters" "$(sub 2)"