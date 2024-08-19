*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
Open and close browsers
    open browser    https://demowebshop.tricentis.com/      chrome
    maximize browser window

    open browser    https://testautomationpractice.blogspot.com/      chrome
    maximize browser window

#    close browser
    close all browsers

*** Keywords ***
