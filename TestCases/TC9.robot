*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome

*** Test Cases ***
MultipleBrowserTest
    open browser    https://www.google.com/     ${browser}
    maximize browser window

    sleep   3

    open browser    https://www.bing.com/    ${browser}
    maximize browser window

    switch browser  1
    ${title1}=      Get Title
    log to console      ${title1}

    switch browser  2
    ${title2}=      Get Title
    log to console      ${title2}

    sleep   3
    close all browsers



*** Keywords ***
