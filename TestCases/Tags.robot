*** Settings ***


*** Test Cases ***
TC1 User Registertration Test
    [Tags]    sanity
    log to console    This is User Registertration Test
    log to console    User Registertration Test is over

TC2 Login Test
    [Tags]    Regression
    log to console    This is Login Test
    log to console    User Login Test is over

TC3 Change User Settings Test
    [Tags]    Regression
    log to console    This is Change User Settings Test
    log to console    User Change User Settings Test is over

TC3 Logout Test
    [Tags]    sanity
    log to console    This is Logout Test
    log to console    User Logout Test is over