*** Settings ***
Documentation    Sign in page objects
Library    SeleniumLibrary
Resource    ../Resources/AmazonGUI.robot


*** Keywords ***
Login with valid credentials
    [Arguments]    ${Username}    ${Password}
    #Enter steps for someone to send keys to both the username and password field and then click enter
    Fill email field    ${Username}
    Fill password field    ${Password}
    Click sign in button

Fill email field
    [Arguments]    ${Username}
    Log    Filling email field with    ${Username}

Fill password field
    [Arguments]    ${Password}
    Log    Filling password field with    ${Password}

Click sign in button


Click proceed to checkout
    click link    Proceed to checkout (1 item)

Verify sign in page loaded
    page should contain  Sign-In
    page should contain    Email or mobile phone number