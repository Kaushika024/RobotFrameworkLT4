

*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Multiple Tab
    Open Browser    browser=chrome      executable_path=${EXECDIR}/drivers/chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.db4free.net/
    Click Element   xpath=//b[contains(text(),'php')]
    Switch Window   phpMyAdmin
    Input Text    id=input_username    dbfree
    Input Password    id=input_password    test123
    Click Element    id=input_go
    Close Window
    Switch Window       db4free.net - MySQL Database for free
    Click Element    link=Donations
    Input Text    id=form_amount    -90
#    Select From List By Index       id=form_currency           3
    Select From List By Label    id=form_currency       JPY
    Click Element    name=submit
    Close Browser

TC2 Multiple Tab
    Open Browser    browser=chrome      executable_path=${EXECDIR}/drivers/chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.db4free.net/
    Click Element   xpath=//b[contains(text(),'php')]
    Switch Window   NEW
    Input Text    id=input_username    dbfree
    Input Password    id=input_password    test123
    Click Element    id=input_go
    Close Window
    Switch Window      MAIN
    Click Element    link=Donations
    Input Text    id=form_amount    -90
#    Select From List By Index       id=form_currency           3
    Select From List By Label    id=form_currency       JPY
    Click Element    name=submit
    Close Browser



