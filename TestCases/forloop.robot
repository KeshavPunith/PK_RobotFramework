*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ForLoop1
    #    FOR  ${i}     IN RANGE  1  4
         #    click element    xpath:(//div[@class='tabpanel_tab_content']/div)[6]
         #END
    FOR  ${i}     IN RANGE  1  2
    LOG TO CONSOLE    ${i}
    END
ForLoop2    # with single spacing
    FOR  ${i}     IN   1 2
    LOG TO CONSOLE    ${i}
    END
ForLoop3    # with    2 space spacing
    FOR  ${i}     IN   1    2
    LOG TO CONSOLE    ${i}
    END
