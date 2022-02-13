*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
   Append To Environment Variable       path      ${EXECDIR}\\drivers
   Open Browser  url= https://phptravels.net/    browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    5s
   #Click Element    locator
   Click Element    id=currency
   Click Element    link= INR
   Click Element    class= waves-effect
   Switch Window    MAIN
   Select From List By Label    id=flight_type      business
   Input Text    id=autocomplete    Los Angeles
   Input Text    id=autocomplete2    Dallas
   Select From List By Index    id=departure   30
   Click Element    class=qtyInc
