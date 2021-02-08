*** Settings ***
Documentation    Sign in page objects
Library    SeleniumLibrary
Resource    ../Resources/AmazonGUI.robot


*** Keywords ***
Login with valid credentials
    [Arguments]    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
    Fill email field
    Fill password field
    Click sign in button

Fill email field
    [Arguments]    ${LOGIN_EMAIL}
    Log    Filling email field with    ${LOGIN_EMAIL}

Fill password field
    [Arguments]    ${LOGIN_PASSWORD}
    Log    Filling password field with    ${LOGIN_PASSWORD}

Click sign in button


Click proceed to checkout
    click link    Proceed to checkout (1 item)

Verify sign in page loaded
    page should contain  Sign-In
    page should contain    Email or mobile phone number