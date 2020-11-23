*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources.robot

*** Variables ***
${browser}  chrome
${url}      http://demo.guru99.com/test/newtours/index.php


*** Test Cases ***
TC1
    ${PageTitle}=   LaunchBrowser   ${url}  ${browser}
    log to console    ${PageTitle}
    log    ${PageTitle}
    input text    name:userName     Mercury
    input text    name:password     Mercury

