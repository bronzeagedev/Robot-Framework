*** Settings ***
Documentation
Library    SeleniumLibrary

*** Keywords ***
Search for products
    go to    http://www.amazon.com.au
    wait until page contains    Amazon.com.au
    sleep    3s
    input text    id=twotabsearchtextbox    Tommy yacht jacket
    click button    css=#nav-search-submit-button
    wait until page contains    results for "Tommy yacht jacket"

Select product from search results
    click link    css=#search > div.s-desktop-width-max.s-desktop-content.sg-row > div.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(2) > div > span > div > div > div:nth-child(4) > h2 > a
    wait until page contains    Back to results

Add product to cart
    select from list by label    css=#native_dropdown_selected_size_name    Large
    sleep    3s
    click button    id=add-to-cart-button
    sleep    3s
    wait until page contains    Added to Cart

Begin checkout
    click link    Proceed to checkout (1 item)
    page should contain  Sign-In
    page should contain    Email or mobile phone number


