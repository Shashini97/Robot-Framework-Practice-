*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
TabbedWindowTest
    open browser    ${url}  ${browser}
    maximize browser window
    click element   xpath://button[contains(text(),'New Tab')]
    sleep   5

    switch window   title=Your Store
    click element   xpath://body/main[1]/div[1]/nav[1]/div[2]/ul[1]/li[7]/a[1]
    sleep   3
    close all browsers


*** Keywords ***
