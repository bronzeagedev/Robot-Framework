*** Settings ***
Documentation    Amazon header menu navigation items
Library    SeleniumLibrary

*** Keywords ***
Search for product
    Enter Search Term
    Submit Search

Enter Search Term
    input text    id=twotabsearchtextbox    Tommy yacht jacket

Submit Search
    click button    css=#nav-search-submit-button