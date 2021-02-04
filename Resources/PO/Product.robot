*** Settings ***
Documentation    Product Page Objects
Library    SeleniumLibrary

*** Keywords ***
Verify product page loaded
    wait until page contains    Back to results

Choose product size
    select from list by label    css=#native_dropdown_selected_size_name    Large
    sleep    3s

Add product to cart
    click button    id=add-to-cart-button
    sleep    3s

Verify product was added to cart
    wait until page contains    Added to Cart
