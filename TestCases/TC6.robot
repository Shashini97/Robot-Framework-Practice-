*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
Handle alerts
    open browser    ${url}  ${browser}
    sleep   1
    click element  id: confirmBtn
    sleep   3
    handle alert    accept
    click element  id: confirmBtn
    sleep   3
    handle alert    dismiss
    click element  id: confirmBtn
    sleep   3
    handle alert    leave
    alert should be present     Press a button!
    close browser

*** Keywords ***
