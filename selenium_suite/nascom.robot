*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Register Form
    Open Browser    url=https://nasscom.in/about-us/career    browser=chrome      executable_path=${EXECDIR}/drivers/chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
#    Click Element    partial link=New User
    Click Element    xpath=//a[contains(text(),'New User')]
    Input Text    id=edit-field-fname-reg    Kaushi
    Input Text    id=edit-field-lname    S
    Input Text    id=edit-mail    kaushi@gmail.com
    Input Text    id=edit-field-company-name-registration    L&T
    Select From List By Label    id=edit-field-business-focus-reg   IT Consulting
    Click Element    name=op
    Close Browser
