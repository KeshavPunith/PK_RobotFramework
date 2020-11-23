*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.google.com/
${url1}      https://www.bing.com/

*** Test Cases ***
Navigation
    open browser    ${url}    ${browser}
    maximize browser window
    ${loc}=     get location
    log to console    ${loc}

    go to    ${url1}
    ${loc}=     get location
    log to console    ${loc}

    go back
    ${loc}=     get location
    log to console    ${loc}

