*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py


*** Keywords ***
Open My Browser
    [Arguments]  ${SiteUrl}    ${Browser}
    open browser    ${SiteUrl}  ${Browser}
    Maximize Browser Window

Enter UserName
    [Arguments]  ${username}
    Input Text  ${txt_loginUserName}    ${username}

Enter Password
    [Arguments]     ${password}
    Input Text  ${txt_loginPassword}    ${password}

Click SignIn
    click button    ${btn_signIn}

Verify Successful Login
    title should be     Find a Flight: Mercury Tours:

close my broswers
    close all browsers