*** Settings ***
Documentation
Library    SeleniumLibrary

Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/HeaderNav.robot
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/SearchResults.robot
Resource    ../Resources/PO/SignIn.robot







*** Keywords ***
Search for products
    Load url
    Verify page loaded
    Search for product
    Verify search results display product


Select product from search results
    Select product from search results
    Verify product page loaded

Add product to cart
    Choose product size
    Add product to cart
    Verify product was added to cart

Begin checkout
    Click proceed to checkout
    Verify sign in page loaded



