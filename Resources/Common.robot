*** Settings ***
Documentation    Common Keywords
Library    SeleniumLibrary



*** Keywords ***
Begin web test
#    [Arguments]    ${url}    ${browser}
    open browser    ${url}    ${browser}
    maximize browser window

End web test
    close browser

Insert testing data
    Log    Setting up test data for suite
    Custom Keyword 1
    Custom Keyword 2

Cleanup testing data
    log    Cleaning up test data
    Custom Keyword 3
    Custom Keyword 4

Custom Keyword 1
    Log    Executing keyword 1

Custom Keyword 2
    Log    Executing keyword 2

Custom Keyword 3
    Log    Executing keyword 3

Custom Keyword 4
    Log    Executing keyword 4
