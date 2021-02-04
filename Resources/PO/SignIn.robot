*** Settings ***
Documentation    Sign in page objects
Library    SeleniumLibrary

*** Keywords ***

Click proceed to checkout
    click link    Proceed to checkout (1 item)

Verify sign in page loaded
    page should contain  Sign-In
    page should contain    Email or mobile phone number