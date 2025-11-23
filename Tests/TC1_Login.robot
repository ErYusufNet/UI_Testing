*** Settings ***
Documentation   to validate the login form
Library    SeleniumLibrary
Library    String
Resource     ../Resources/Keywords.robot


*** Test Cases ***
Validate UnSuccesful Login
#    set selenium speed    1 seconds
    Open Browser With Mortgage URL
    Maximize Browser Window
    Fill the login form
    Wait Until Error Message Visible
    verify error message is correct



