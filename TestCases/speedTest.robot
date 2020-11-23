*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}   http://demowebshop.tricentis.com/register

*** Test Cases ***
Reg Test
    ${speed}=   get selenium speed
    log to console    ${speed}
    open browser    ${url}    ${browser}
    maximize browser window
    set selenium speed    2 seconds
    select radio button    Gender   M
    input text    name:FirstName        Punith
    input text    name:LastName         K
    input text    name:Email            PK@gmail.com
    input text    name:Password         Password
    input text    name:ConfirmPassword         Password
    ${speed}=   get selenium speed
    log to console    ${speed}