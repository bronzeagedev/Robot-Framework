*** Settings ***
Documentation    Testing Amazon
# WE are no longer referencing the SeleniumLibrary in this script

Resource    ../Resources/Common.robot
Resource    ../Resources/AmazonGUI.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test

# Type this into the terminal to run this script
# robot -d results tests/amazon.robot



*** Test Cases ***
Navigate to Amazon, search for Dune and click on the link
    [Documentation]    Basic test info
    [Tags]    Smoke

    Common.Begin web test
    AmazonGUI.Search for products
    AmazonGUI.Select product from search results
    AmazonGUI.Add product to cart
    AmazonGUI.Begin checkout
    Common.End web test


