*** Settings ***

Library    SeleniumLibrary


#    Libraries -- All the libraries used for the test case goes here

*** Variables ***

# Variables defined in the test goes in this section

*** Test Cases ***

# Multiple test cases goes here
LoginTest
    create webdriver    chrome  executable_path="path where webdrivers are placed (C://Driverpath//chromedriver.exe)"
    open browser    URL     chrome


*** Keywords ***

# Robot Framework has inbuild keywords , other than that any user defined keywords required for the test cases will be scripted under this section








