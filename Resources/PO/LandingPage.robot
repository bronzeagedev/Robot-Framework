*** Settings ***
Documentation    Landing Page navigation items
Library    SeleniumLibrary
Resource    ../Resources/Common.robot
Resource    ../Tests/Amazon.robot

*** Keywords ***
Load url
    go to    ${URL}

Verify page loaded
    wait until page contains    Amazon.com.au