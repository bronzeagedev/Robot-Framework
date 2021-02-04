*** Settings ***
Documentation    Testing Amazon
Library    SeleniumLibrary

# WE are no longer referencing the SeleniumLibrary in this script
#Resource    Resources/Common-Keywords.robot
#Resource    Resources/Amazon-Keywords.robot
#Test Setup    Begin Web Test
#Test Teardown    End Web Test

# Type this into the terminal to run this script
# robot -d results tests/amazon.robot



*** Test Cases ***
Naivgate to Amazon, search for Dune and click on the link
    [Documentation]    Test whether I can open Amazon
    [Tags]    Smoke

    Begin web test
    Search for products
    Select product from search results
    Add product to cart
    Begin checkout
    End web test


*** Keywords ***
Begin web test
    open browser    about:blank    chrome
    maximize browser window

Search for products
    go to    http://www.amazon.com.au
    wait until page contains    Amazon.com.au
    sleep    3s
    input text    id=twotabsearchtextbox    dune
    click button    css=#nav-search-submit-button
    wait until page contains    results for "dune"

Select product from search results
    click link    css=#search > div.s-desktop-width-max.s-desktop-content.sg-row > div.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(3) > div > span > div > div > div:nth-child(2) > div.sg-col-4-of-12.sg-col-8-of-16.sg-col-12-of-20.sg-col > div > div:nth-child(1) > div > div > div:nth-child(1) > h2 > a
    wait until page contains    Back to search results

Add product to cart
    click button    id=submit.add-to-cart
    wait until page contains    Added to Cart

Begin checkout
    click button    id=hlb-ptc-btn
    page should contain  Sign-In
    page should contain    Email or mobile phone number


End web test
    close browser

