*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.hyrtutorials.com/p/frames-practice.html

*** Test Cases ***
Testing frames
    open browser    ${url}  ${browser}
    sleep   10
    select frame    xpath://iframe[@id='frm1']
    click link  link:HOME
    unselect frame

    select frame    xpath://iframe[@id='frm2']
    click link  link:HOME
    unselect frame

    close browser

*** Keywords ***
