*** Settings ***
Documentation   to validate the login form
Library    SeleniumLibrary
Resource   ../Resources/Keywords.robot
Test Setup      TC2 Valid Login
Test Teardown    Close My Browser

*** Test Cases ***

#TC1 Invalid Login
#    Open Browser With Mortgage URL
#    Fill The Login Form    ${VALID_USER}    ${INVALID_PASS}
#    Wait Until Error Message Visible
#    Verify Error Message Is Correct
TC2 Valid Login
    Open Browser With Mortgage URL
    Fill The Login Form    ${VALID_USERNAME}    ${VALID_PASS}
    Sleep    2
    # burada login sonrası page assertion yazabilirsin

