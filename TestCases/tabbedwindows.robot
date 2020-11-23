*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://demo.automationtesting.in/Windows.html


*** Test Cases ***
Tabbed Windows
    open browser    ${url}    ${browser}
    maximize browser window
    click element    xpath://a[@href='http://www.selenium.dev']//button[@class='btn btn-info'][normalize-space()='click']
    select window    title=SeleniumHQ Browser Automation
    click element    xpath://a[contains(text(),'Support')]
    sleep    3
    close all browsers