*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}   http://demowebshop.tricentis.com/register
${url2}   https://robotframework.org/

*** Test Cases ***
Reg Test

    open browser    ${url}    ${browser}
    maximize browser window

    open browser    ${url2}    ${browser}
    maximize browser window

    close all browsers