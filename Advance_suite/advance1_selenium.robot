*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}drivers${/}chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Window Size    600    800
    Go To    url=http://google.com/
    ${linkcount}    Get Element Count    tag=a
    Log To Console    ${linkcount}

    @{elements}  Get WebElements    tag=a

    ${text}     Get Text    ${element}[0]
    Log To Console    ${text}

    Comment    Write for loop to get 0 to 24 index and use it to get text

    FOR    ${i}    IN RANGE    1   ${linkcount}
        ${text}     Get Text    ${elements}[${i}]
        Log To Console    ${text}

        Run Keyword If    '${text}'=='Images'       Click Element    ${elements}[${i}]
        Exit For Loop If    '${text}'=='Images'
    END


TC3 Mouse text

    Open Browser   browser=chrome     executable_path=${EXECDIR}${/}drivers${/}chromedriver
    Set Selenium Implicit Wait    30s


    Go To    url=https://nasscom.in/
    Mouse Over    xpath=//a[text()='Membership'
    Click Element    xpath=//a[text()='Members Listing'
    
 TC4
   Append To Environment Variable   path      ${EXECDIR}\\drivers
   Open Browser  url=https://demo.openemr.io/b/openemr/index.php    browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    5s
   Input Text    id=authUser   admin
   Input Password    id=clearPass    pass
   Select From List By Label    name=languageChoice     English (Indian)
   #Click Element    class=btn
   Click Element    xpath=//button[@type='submit']
   ${title}     Get Title
   Log To Console    ${title}
   Title Should Be    OpenEMR
   
   Mouse Down    xpath=//div[@id='username']
   Click Element    xpath=//li[text()='Logout']

   Close Browser
