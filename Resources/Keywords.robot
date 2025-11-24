*** Settings ***
Library     SeleniumLibrary
Library    Collections
Resource    Variables.robot
Resource    Locators.robot

*** Keywords ***
Open Browser With Mortgage URL
    Open Browser    ${URL}    ${BROWSER}

Fill The Login Form
    [Arguments]    ${username}    ${password}
    Input Text    ${USERNAME_FIELD}    ${username}
    Input Text    ${PASSWORD_FIELD}    ${password}
    Click Button    ${LOGIN_BUTTON}

Wait Until Error Message Visible
    Wait Until Element Is Visible    ${ERROR_MESSAGE}

Verify Error Message Is Correct
    Element Text Should Be    ${ERROR_MESSAGE}    Incorrect username/password.

Close My Browser
    Close Browser

TC2 Valid Login
    Open Browser With Mortgage URL
    Fill The Login Form    ${VALID_USERNAME}    ${VALID_PASS}
    Sleep    2

Cards
    Wait Until Element Is Visible    ${CHECKOUT}

Verify Card Titles
    @{expected_list}=    Create List
    ...    Iphone X
    ...    Samsung Note 8
    ...    Nokia Edge
    ...    Blackberry

    @{actual_list}=    Get Texts    css:.card-title

    Lists Should Be Equal    ${expected_list}    ${actual_list}