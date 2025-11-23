*** Settings ***
Library     SeleniumLibrary
Resource     ../Resources/Keywords.robot
Resource     ../Resources/Locators.robot
Resource     ../Resources/Variables.robot



*** Keywords ***
Open Browser With Mortgage URL
    Open Browser    ${URL}    ${BROWSER}

Fill The Login Form
    Input Text    ${USERNAME}    ${VALID_USER}
    Input Text    ${PASSWORD}    ${INVALID_PASS}
    Click Button  ${LOGIN_BUTTON}

Wait Until Error Message Visible
    Wait Until Element Is Visible    ${ERROR_MESSAGE}

Verify Error Message Is Correct
    Element Text Should Be    ${ERROR_MESSAGE}    Incorrect username/password.

Close My Browser
    Close Browser
