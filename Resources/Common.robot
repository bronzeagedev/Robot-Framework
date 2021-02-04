*** Settings ***
Documentation    Common Keywords
Library    SeleniumLibrary

*** Variables ***
${URL}
${BROWSER}

*** Keywords ***
Begin web test
    open browser    about:blank    chrome
    maximize browser window

End web test
    close browser