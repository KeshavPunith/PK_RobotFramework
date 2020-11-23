*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://testautomationpractice.blogspot.com/


*** Test Cases ***
Alert
    open browser    ${url}    ${browser}
    maximize browser window
    click element    xpath://button[normalize-space()='Click Me']
    sleep    3
    #handle alert    accept     #clicks on Ok button
    #handle alert    dismiss    # clicks on cancel button
    #handle alert    LEAVE      #Shows alert message for long time
    alert should be present    Press a button!


