*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${Login url}       https://admin-demo.nopcommerce.com/

*** Keywords ***
Open My Browser
    open browser    ${Login url}    ${browser}
    maximize browser window

close Browsers
    close all browsers

Open Login Page
    go to    ${Login url}

Input UserName
    [Arguments]    ${username}
    input text    id:Email  ${username}

Input Password
    [Arguments]    ${password}
    input text    id:Password  ${password}

Click on Login Button
    click element    xpath://input[@value='Log in']

Click on Logout Link
    click link    Logout

Error Message should be visible
    page should contain    Login was unsuccessful

Dashboard Page should be visible
    page should contain    Dashboard
