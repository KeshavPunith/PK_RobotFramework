*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}   http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}    ${browser}
    maximize browser window
    set selenium speed    2seconds
    #  Selecting Unique identified name in Radio Buttons
#Arguments
         #group_name
         #value
#Documentation
      #Sets the radio button group "group_name" to "value".
    select radio button     sex     Female
    select radio button     exp     5
    # Selcting Check boxes
    #Arguments
         #locator
         #Documentation
         #Selects the checkbox identified by locator.
     select checkbox    BlackTea
     select checkbox    RedTea
     #Unselecting Check boxes
     unselect checkbox      BlackTea
