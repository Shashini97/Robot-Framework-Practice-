*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register

*** Test Cases ***
Testing the registration
#    ${speed}=   get selenium speed
#    log to console   ${speed}
    open browser    ${url}    ${browser}
    maximize browser window
#    sleep   3
#    set selenium implicit wait  10 seconds   // apply for the whole code
#    set selenium speed  3 seconds
    set selenium timeout    10 seconds
    wait until page contains    Register
    select radio button     Gender  F
    input text  id:FirstName    Shashini
    input text  id:LastName     Amasha
    input text  id:Email    test@test.com
    input text  id:Password     Test@123
    input text  id:ConfirmPassword  Test@123
#    ${speed}=   get selenium speed

#    log to console   ${speed}
    close browser

*** Keywords ***
