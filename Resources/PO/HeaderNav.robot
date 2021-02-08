*** Settings ***
Documentation    Amazon header menu navigation items
Library    SeleniumLibrary
Resource    ../Resources/AmazonGUI.robot


*** Variables ***
${HEADER_SEARCH_BAR} =    id=twotabsearchtextbox
${SUBMIT_SEARCH_BUTTON} =    css=#nav-search-submit-button

*** Keywords ***
Search for product
    Enter Search Term
    Submit Search

Enter Search Term
    input text    ${HEADER_SEARCH_BAR}    ${SEARCH_TERM}

Submit Search
    click button    ${SUBMIT_SEARCH_BUTTON}