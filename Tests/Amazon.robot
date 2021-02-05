*** Settings ***
Documentation    Testing Amazon
Resource    ../Resources/Common.robot
Resource    ../Resources/AmazonGUI.robot
Suite Setup    Insert testing data
Test Setup    Begin Web Test
Test Teardown    End Web Test
Suite Teardown    Cleanup testing data
# Type this into the terminal to run this script
# robot -d results tests/amazon.robot

*** Variables ***
${MY_VARIABLE} =    Mein variable

*** Test Cases ***
User searches for products
    [Documentation]    Basic test info
    [Tags]    Smoke

    AmazonGUI.Search for products

User must sign in to check out
    [Documentation]    Basic test info
    [Tags]    Smoke

    AmazonGUI.Search for products
    AmazonGUI.Select product from search results
    AmazonGUI.Add product to cart
    AmazonGUI.Begin checkout


Set a variable in the test case
    [Documentation]    This is a fake test to show how you can log a variable at runtime
    [Tags]    Current
    ${myNewVariable} =    set variable    My new variable
    Log    ${myNewVariable}

Variable Demonstration
    Log  ${MY_VARIABLE}