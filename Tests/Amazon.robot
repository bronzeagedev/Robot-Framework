*** Settings ***
Documentation    Testing Amazon
# WE are no longer referencing the SeleniumLibrary in this script

Resource    ../Resources/Common.robot
Resource    ../Resources/AmazonGUI.robot

Suite Setup    Insert testing data

Test Setup    Begin Web Test
Test Teardown    End Web Test

Suite Teardown    Cleanup testing data
# Type this into the terminal to run this script
# robot -d results tests/amazon.robot



*** Test Cases ***
User searches for products
    [Documentation]    Basic test info
    [Tags]    Smoke

    Search for products

User must sign in to check out
    [Documentation]    Basic test info
    [Tags]    Smoke

    Search for products
    Select product from search results
    Add product to cart
    Begin checkout