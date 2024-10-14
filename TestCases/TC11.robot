*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTC
    open browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login      chrome
    maximize browser window
    sleep   4
    input text      name: username      Admin
    input text      name:password       admin123

    capture element screenshot      xpath://*[@id="app"]/div[1]/div/div[1]/div/div[1]/img       C:/Users/Asus/PycharmProjects/robortFramework_Practice/Logo.png
    capture page screenshot     C:/Users/Asus/PycharmProjects/robortFramework_Practice/LoginTC.png
    close browser


*** Keywords ***
