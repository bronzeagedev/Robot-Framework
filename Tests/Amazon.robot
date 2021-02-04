*** Settings ***
Documentation    Testing Amazon
# WE are no longer referencing the SeleniumLibrary in this script
Resource    Resources/Common-Keywords.robot
Resource    Resources/Amazon-Keywords.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test

# Type this into the terminal to run this script
# robot -d results tests/amazon.robot

*** Variables ***


*** Test Cases ***
Naivgate to Amazon, search for Dune and click on the link
    [Documentation]    Test whether I can open Amazon
    [Tags]    Smoke Chrome
    open browser    http://www.amazon.com.au    chrome
    sleep    3s
    input text    id=twotabsearchtextbox    dune
    sleep    3s
    click button    css=#nav-search-submit-button
    click link    css=#search > div.s-desktop-width-max.s-desktop-content.sg-row > div.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(3) > div > span > div > div > div:nth-child(2) > div.sg-col-4-of-12.sg-col-8-of-16.sg-col-12-of-20.sg-col > div > div:nth-child(1) > div > div > div:nth-child(1) > h2 > a
    close browser


*** Keywords ***
