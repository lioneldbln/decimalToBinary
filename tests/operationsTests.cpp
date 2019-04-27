#include "operations.h"
#include "gmock/gmock.h"

TEST(OperationsTest, Add2To3Equals5) {
    int actual = Add(2, 3);
    //ASSERT_EQ(actual, 5);
    ASSERT_THAT(actual, 5);
}

TEST(OperationsTest, Add4To3Equals7) {
    int actual = Add(4, 3);
    ASSERT_THAT(actual, ::testing::Eq(7));
}
