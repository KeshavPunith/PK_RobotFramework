*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeyword.robot

*** Variables ***
${Browser}      headlesschrome
${SiteUrl}      http://demo.guru99.com/test/newtours/index.php
${user}         tutorial
${password}     tutorial

*** Test Cases ***
Login Test
    Open My Browser    ${SiteUrl}   ${Browser}
    Enter User Name    ${user}
    Enter Password     ${password}
    Click SignIn
    sleep    3
    Verify Successfull Login
    Close my Browsers