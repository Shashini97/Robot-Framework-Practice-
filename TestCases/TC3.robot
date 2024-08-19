*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
Testing the form
    open browser    ${url}    ${browser}
    maximize browser window
    Testing Input Boxes
    Testing Radio Buttons
    Testing checkboxes
    Testing dropdown list
    Testing list box
    close browser

*** Keywords ***
Testing Input Boxes
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

Testing dropdown list
    select from list by label   country     Germany
    sleep   3
    select from list by value   country     japan
    sleep   3
    select from list by index   country     9

Testing list box
    select from list by index   colors     0
    select from list by label   colors     White
    sleep   3
    unselect from list by value     colors     red
    sleep   3
