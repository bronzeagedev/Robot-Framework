*** Settings ***
Documentation    Common Keywords
Library    SeleniumLibrary
*** Variables ***


*** Keywords ***
Begin Web Test
    open browser    http://www.amazon.com.au    chrome

End Web Test
    close browser