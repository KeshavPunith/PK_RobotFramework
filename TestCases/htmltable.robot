*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}       http://testautomationpractice.blogspot.com/


*** Test Cases ***
Table Validations
    open browser    ${url}    ${browser}
    maximize browser window
    #Gives rows and colums count
    ${rows}=    get element count    xpath://table[@name='BookTable']/tbody/tr
    ${columns}=    get element count    xpath://table[@name='BookTable']/tbody/tr[1]/th
    log to console    ${rows}
    log to console    ${columns}
    #Data from Table
     ${data}=    get text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
     log to console    ${data}
     #Table Column Data Validations
     table column should contain        xpath://table[@name='BookTable']        2       Author
     table header should contain     xpath://table[@name='BookTable']       Author
     #Table Row Data Validations
     table row should contain       xpath://table[@name='BookTable']        4       Learn JS
     # Table cell validation
     table cell should contain     xpath://table[@name='BookTable']        2      Mukesh