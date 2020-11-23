*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}       http://demo.guru99.com/test/newtours/index.php


*** Test Cases ***
Extract Links
    open browser    ${url}    ${browser}
    maximize browser window
    ${AllLinksCount}=   get element count    xpath://a
    log to console    ${AllLinksCount}

    @{LinkItems}    create list
    FOR  ${i}     IN RANGE  1   ${AllLinksCount}
    ${linktext}=    get text    xpath:(//a)[${i}]
    LOG TO CONSOLE    ${linktext}
    END