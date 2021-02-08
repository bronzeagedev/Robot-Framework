*** Settings ***
Documentation
Resource    ../Resources/PO/HeaderNav.robot
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/SearchResults.robot
Resource    ../Resources/PO/SignIn.robot

*** Variables ***
${URL} =    http://www.amazon.com.au
${BROWSER} =    chrome
${SEARCH_TERM} =    Tommy yacht jacket
${PRODUCT_SIZE} =    Large
${LOGIN_EMAIL} =    esuohnednerb@hotmail.com
${LOGIN_PASSWORD} =    fakepassword001010110101


*** Keywords ***
Login
    [Arguments]    ${Username}    ${Password}
    SignIn.Login with valid credentials    ${Username}    ${Password}

Login with invalid credentials
    SignIn.Fill email field    fake@fakeemailaddress.com
    SignIn.Fill password field    fakepassword
    SignIn.Click sign in button

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



