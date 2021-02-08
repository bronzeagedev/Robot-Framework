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

# robot -d results -v browser:chrome -v search_term:tommy yacht jacket -i smoke tests/amazon.robot

*** Variables ***


*** Test Cases ***
Logged out user can search for product
    [Documentation]    Basic test info
    [Tags]    Smoke
    AmazonGUI.Search for products

Logged out user can view a product
    [Tags]    Smoke
    AmazonGUI.Search for products
    AmazonGUI.Select product from search results

Logged out user can add product to cart
    [Tags]    Smoke
    AmazonGUI.Search for products
    AmazonGUI.Select product from search results
    AmazonGUI.Add product to cart

Logged out user must sign in to check out
    [Tags]    Smoke
    AmazonGUI.Search for products
    AmazonGUI.Select product from search results
    AmazonGUI.Add product to cart
    AmazonGUI.Begin checkout


