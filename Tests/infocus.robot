*** Settings ***
Documentation    Testing Infocus Workshops
Library    SeleniumLibrary

# Type this into the terminal to run this script
# robot -d results tests/dune.robot

*** Variables ***


*** Test Cases ***
Naivgate to Infocusworkshops, click on Courses Link
    [Documentation]    Test whether I can open Infocus Workshops
    [Tags]    Smoke Chrome
    open browser    http://www.infocusworkshops.com    chrome
    sleep    3s
    click link    css=#comp-js57ymor1 > a
    sleep    3s
    close browser


*** Keywords ***
