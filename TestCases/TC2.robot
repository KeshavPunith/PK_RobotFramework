*** Settings ***
Documentation  Anglo Site Login Tests
Library    SeleniumLibrary
#Test Template   Login

*** Variables ***

${Browser}  headlesschrome
${url}  https://project-anglo.isometrix.net/login.aspx?ReturnUrl=%2f

*** Test Cases ***
TC1: Valid User Name and Valid Password
    Login    Admin  123
TC2: Valid User Name and Invalid Password
    Login    Admin  1
TC3: Invalid User Name and valid Password
    Login    Invalid   123
TC4: Invalid User Name and Invalid Password
    Login    Invalid   Invalid

     [Teardown]    Close Browser


*** Keywords ***
Login
    [Arguments]     ${UName}      ${Pword}
    Open Browser    ${url}     ${Browser}
    maximize browser window
    ${"UserName"}   set variable    id:txtUsername
    element should be visible   ${"UserName"}
    element should be enabled   ${"UserName"}
    input text  ${"UserName"}  ${UName}
    ${"Password"}   set variable    id:txtPassword
    element should be visible   ${"Password"}
    element should be enabled   ${"Password"}
    input text  ${"Password"}  ${Pword}
    ${"SignIn"}     set variable    id:btnLoginSubmit
    click element   ${"SignIn"}
    title should be     IsoMetrix






    capture page screenshot
    close browser

