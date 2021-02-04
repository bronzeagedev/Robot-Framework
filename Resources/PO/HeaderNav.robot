*** Settings ***
Documentation    Amazon header menu navigation items
Library    SeleniumLibrary
Resource    ../Resources/Common.robot


*** Keywords ***
Search for product
    Enter Search Term
    Submit Search

Enter Search Term
    input text    id=twotabsearchtextbox    ${SEARCH_TERM}

Submit Search
    click button    css=#nav-search-submit-button