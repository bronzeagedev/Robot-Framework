*** Settings ***
Documentation    Search results page objects
Library    SeleniumLibrary
Resource    ../Resources/Common.robot
Resource    ../Tests/Amazon.robot


*** Keywords ***
Verify search results display product
    wait until page contains    results for "${SEARCH_TERM}"

Select product from search results
    [Documentation]    Click on the first product in the search results
    click link    css=#search > div.s-desktop-width-max.s-desktop-content.sg-row > div.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(2) > div > span > div > div > div:nth-child(4) > h2 > a

