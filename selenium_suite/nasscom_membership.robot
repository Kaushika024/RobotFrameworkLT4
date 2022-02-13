*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}drivers${/}chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://nasscom.in/nasscom-membership
    Select Radio Button    field_membership_type[und]    1203
    Select Checkbox    id=edit-field-business-focus-inst-und-966
    Select Checkbox    id=edit-field-business-focus-inst-und-968
    Click Element    link=Calculate Membership Fee
    ${text}     Handle Alert    action=LEAVE
    Log To Console    ${text}

    Alert Should Be Present    Please enter amount in digit and greater than zero.      action=ACCEPT

    Choose File    id=edit-field-memorandum-article-of-asso-und-0-upload    file_path="C:\Users\koush\Downloads\Aadhar.pdf"

    Sleep    25s
    Close Browser
