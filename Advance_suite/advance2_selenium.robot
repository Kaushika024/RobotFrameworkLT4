*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}drivers${/}chromedriver
    Set Selenium Implicit Wait    30s
    Set Selenium Speed    1s
    Set Window Size    600    800
    Go To    url=http://google.com/
    Press Keys      xpath=//input[@name='q']       Kaushi
    Press Keys      None        ARROW_DOWN
    Press Keys      None        ARROW_DOWN
    Press Keys      None        RETURN

TC2 PHP Travel
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}drivers${/}chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Selenium Speed    1s
    Go To    url=https://phptravels.net/
    Click Element    xpath=//a[text()='flights']

    Input Text    id=autocomplete    lax
    Press Keys      None        ARROW_DOWN
    Press Keys      None        RETURN

    Input Text    id=autocomplete2    dal
    Press Keys      None        ARROW_DOWN
    Press Keys      None        RETURN

    Input Text    id=departure    30-03-2022

    Click Element    xpath=//i[@class='la la-user form-icon']

    Click Element    xpath=//i[@class='la la-plus']
    Click Element    xpath=//i[@class='la la-plus']
    Click Element    xpath=//i[@class='la la-plus']

    Click Element    xpath=(//i[@class='la la-plus'])[2]
    Click Element    xpath=(//i[@class='la la-plus'])[2]
    [Teardown]     Close Browser
