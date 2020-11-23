*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open My Browser
    [Arguments]    ${SiteUrl}   ${Browser}
    open browser    ${SiteUrl}   ${Browser}
    maximize browser window

Enter User Name
      [Arguments]    ${username}
      input text    ${txt_loginUserName}    ${username}

Enter Password
      [Arguments]    ${password}
      input text    ${txt_loginPassword}    ${password}

Click SignIn
      click button      ${btn_SignIn}

Verify Successfull Login
      title should be    Login: Mercury Tours

Close my Browsers
    close all browsers