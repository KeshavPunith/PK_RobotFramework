*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.countries-ofthe-world.com/flags-of-the-world.html


*** Test Cases ***
Scroll
#Scroll page till it reach a pixel number
    open browser    ${url}    ${browser}
    maximize browser window
    execute javascript    window.scrollTo(0,1500)
#Scroll page till find element on the page
    scroll element into view    xpath://img[@alt='Flag of India']
#Scroll page till bottom
    execute javascript      window.scrollTo(0,document.body.scrollHeight)
    sleep    5
#Scroll page back to top
    execute javascript      window.scrollTo(0,-document.body.scrollHeight)
