*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
Testing Input Boxes
    open browser    ${url}    ${browser}
    maximize browser window
    input text  id:name     Shashini
    input text  id:email     test@test.com
    input text  id:phone     +956789643
    input text  id:textarea     45/c,flower road

Testing Radio Buttons
    select radio button     gender      female

Testing checkboxes
    select checkbox     friday
    select checkbox     sunday

    unselect checkbox   sunday


    sleep   5
    close browser

*** Keywords ***
