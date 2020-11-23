*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_Resources.robot
Suite Setup     Open My Browser
Suite Teardown    close Browsers
Test Template    Invalid Login

*** Test Cases ***      username    password
Right User empty Password       admin@yourstore.com     ${EMPTY}
Right User wrong Password       admin@yourstore.com     xyz
Wrong User right Password       admin1@yourstore.com     admin
Wrong User empty Password       admin1@yourstore.com     ${EMPTY}
Wrong User wrong Password       admin1@yourstore.com     xyz


*** Keywords ***
Invalid Login
    [Arguments]     ${username}      ${password}
    Input UserName    ${username}
    Input Password    ${password}
    Click on Login Button
    Error Message should be visible