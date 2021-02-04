*** Settings ***
Documentation
Library    SeleniumLibrary

*** Keywords ***
Search for products
    go to    http://www.amazon.com.au
    wait until page contains    Amazon.com.au
    sleep    3s
    input text    id=twotabsearchtextbox    dune
    click button    css=#nav-search-submit-button
    wait until page contains    results for "dune"

Select product from search results
    click link    css=#search > div.s-desktop-width-max.s-desktop-content.sg-row > div.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(3) > div > span > div > div > div:nth-child(2) > div.sg-col-4-of-12.sg-col-8-of-16.sg-col-12-of-20.sg-col > div > div:nth-child(1) > div > div > div:nth-child(1) > h2 > a
    wait until page contains    Back to results

Add product to cart
    click button    id=add-to-cart-button
    wait until page contains    Added to Cart

Begin checkout
    click link    Proceed to checkout
    page should contain  Sign-In
    page should contain    Email or mobile phone number


