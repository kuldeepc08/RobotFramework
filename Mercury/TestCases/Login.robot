*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywors.robot
Library     BuiltIn

Suite Setup     Open My Browser     ${SiteUrl}  ${Browser}
Suite Teardown  close my broswers


*** Variables ***
${Browser}  chrome
${SiteUrl}  http://newtours.demoaut.com/
${user}     tutorial
${pwd}      tutorial
${timeout}  3 seconds

*** Test Cases ***
LoginTest
    Enter UserName  ${user}
    Enter Password  ${pwd}
    Click SignIn
    sleep          ${timeout}
    Verify Successful Login