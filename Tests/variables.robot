*** Settings ***
Documentation    Testing Amazon
Resource    ../Resources/Common.robot
Resource    ../Resources/AmazonGUI.robot

# Type this into the terminal to run this script
# robot -d results tests/variables.robot

*** Variables ***
${MY_VARIABLE} =    blank
@{listVariable} =    data1    data2    data3

*** Test Cases ***
Set a variable in the test case
    [Documentation]    Setting new variable in test case test
    [Tags]    Current
    ${myNewVariable} =    set variable    My new variable
    Log    ${myNewVariable}

Variable demonstration 1
    [Documentation]    Log variable demonstration test
    [Tags]    Current
    Log  ${MY_VARIABLE}

Variable demonstration 2
    [Documentation]    List variable demonstration test
    [Tags]    Current
    Log    ${listVariable}[0]
    Log    ${listVariable}[1]
    Log    ${listVariable}[2]

Variable demonstration 3
    [Documentation]    List variable demonstration test
    [Tags]    Current
    ${listVariable} =    create list    item1    item2    item3
    Log    ${listVariable}[0]
    Log    ${listVariable}[1]
    Log    ${listVariable}[2]