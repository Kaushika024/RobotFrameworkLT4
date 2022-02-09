*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem


*** Test Cases ***
TC1 Valid Login
    Append To Environment Variable   Path      ${EXECDIR}\\drivers
    Open Browser    url=https://demo.openemr.io/b/openemr/index.php         browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    id=authUser    admin
    Input Password    id=clearpass    pass
    Select From List By Label       name=languageChoice         English (Indian)
    Click Element    xpath=//button[@type='submit']
    ${title}       Get Title
    Log To Console    ${title}
    Title Should Be    OpenEMR
    Close Browser