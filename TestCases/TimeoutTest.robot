*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}   http://demowebshop.tricentis.com/register

*** Test Cases ***
Reg Test

    open browser    ${url}    ${browser}
    maximize browser window
    set selenium timeout    10 seconds
    wait until page contains    Register      # Default wait time is 5 seconds
    select radio button    Gender   M
    input text    name:FirstName        Punith
    input text    name:LastName         K
    input text    name:Email            PK@gmail.com
    input text    name:Password         Password
    input text    name:ConfirmPassword         Password
