*** Settings ***
Documentation
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/HeaderNav.robot
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/SearchResults.robot
Resource    ../Resources/PO/SignIn.robot


*** Keywords ***
Search for products
    LandingPage.Load url
    LandingPage.Verify page loaded
    HeaderNav.Search for product
    SearchResults.Verify search results display product


Select product from search results
    SearchResults.Select product from search results
    Product.Verify product page loaded

Add product to cart
    Product.Choose product size
    Product.Add product to cart
    Product.Verify product was added to cart

Begin checkout
    SignIn.Click proceed to checkout
    SignIn.Verify sign in page loaded



