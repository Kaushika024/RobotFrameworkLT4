*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1 Valid Login
   Append To Environment Variable  path      ${EXECDIR}\\drivers
   Open Browser  url=https://demo.openemr.io/b/openemr/index.php    browser=chrome
   Maximize Browser Window
   #Set Selenium Implicit Wait    5s
   Set Selenium Speed    1s

   Input Text    id=authUser   admin
   Reload Page
   Input Password    id=clearPass    pass
   Select From List By Label    name=languageChoice     English (Indian)

   ${appdesc}    Get Text    xpath=//p[contains(text(),'most')]
   Log To Console    ${appdesc}

   ${selecteddropdownlabel}     Get Selected List Label    name=languageChoice
   Log To Console    ${selecteddropdownlabel}

