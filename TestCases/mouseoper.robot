*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://swisnl.github.io/jQuery-contextMenu/demo.html
${url2}      http://testautomationpractice.blogspot.com/
${url3}     http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html


*** Test Cases ***
MouseActions
    open browser    ${url}    ${browser}
    maximize browser window
    # Right Click action
    open context menu    xpath://span[@class='context-menu-one btn btn-neutral']
    sleep    3
    #Double Click action
    go to    ${url2}
    maximize browser window
    double click element    xpath://button[normalize-space()='Copy Text']
    sleep    3
    #Drag and Drop
    go to    ${url3}
    maximize browser window
    drag and drop    id:box6   id:box106
    sleep    4
    close all browsers
