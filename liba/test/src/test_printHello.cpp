#include <iostream>
#include "CppUTest/CommandLineTestRunner.h"
#include "CppUTest/TestHarness.h"

#include "prints.h"

TEST_GROUP(Prints)
{
    void setup()
    {
    }

    void teardown() 
    {
    }
};

TEST(Prints, printHello)
{
    printHello();
}

TEST(Prints, printOs)
{
    printOs();
}

int main(int argc, char** argv)
{
    return RUN_ALL_TESTS(argc, argv);
}
