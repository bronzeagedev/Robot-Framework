*** Settings ***
Documentation    Amazon header menu navigation items
Library    SeleniumLibrary

*** Variables ***


***** Keywords ***

Search for Products
    Enter Search Term
    Submit Search


Enter Search Term
    Input Text    id=    Dune

Submit Search
    Click Button
