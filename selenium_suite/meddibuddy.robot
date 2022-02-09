*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem


*** Test Cases ***
TC1 Valid Login
    Append To Environment Variable   Path      ${EXECDIR}\\drivers
    Open Browser    url=https://www.medibuddy.in/         browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    link=For Employer
    Switch Window    Medibuddy LaunchPad
    Click Element    link=Sign up
    Input Text    id=name    kaushi
    Input Text    name=email    kaushi@gmail.com
    Input Text    id=companyName    CCCs
    Input Text    id=mobilenumber    899564322
    Click Element    xpath=//input[@value='Next']
    Close Window