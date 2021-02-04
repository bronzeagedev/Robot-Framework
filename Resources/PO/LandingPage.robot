*** Settings ***
Documentation    Landing Page navigation items
Library    SeleniumLibrary

*** Keywords ***
Load url
    go to    http://www.amazon.com.au

Verify page loaded
    wait until page contains    Amazon.com.au