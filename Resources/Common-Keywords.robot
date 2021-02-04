*** Settings ***
Documentation    Common Keywords
Library    SeleniumLibrary

*** Variables ***
${URL}    about:blank
${BROWSER}    chrome

*** Keywords ***
Begin Web Test
    open browser    ${URL}    ${BROWSER}
    maximize browser window

End Web Test
    close browser