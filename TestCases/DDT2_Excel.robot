*** Settings ***
Library    SeleniumLibrary
#Library    ExcelLibrary
Resource    ../Resources/login_Resources.robot
Library     DataDriver       ../TestData/LoginData.csv

Suite Setup     Open My Browser
Suite Teardown    close Browsers
Test Template    Invalid Login

*** Test Cases ***
LoginTestwithExcel

*** Keywords ***
Invalid Login
    [Arguments]         ${username}      ${password}
    Input UserName      ${username}
    Input Password      ${password}
    Click on Login Button
    Error Message should be visible