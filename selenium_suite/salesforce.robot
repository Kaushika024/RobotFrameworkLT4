*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
   Append To Environment Variable       path      ${EXECDIR}\\drivers
   Open Browser      url=https://www.salesforce.com/in/form/signup/freetrial-sales/    browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    5s
   Input Text    name=UserFirstName    john
   Input Text    name=UserLastName    Mike
   Input Text    name=UserEmail    john@gmail.com
   Select From List By Label    name=UserTitle       IT Manager
   Input Text    name=CompanyName    Ltts
   Select From List By Label    name=CompanyEmployees        101 - 500 employees
   #Input Text    id=UserPhone-e1Xa    9876543210
   Select From List By Label    name=CompanyCountry     United Kingdom
   #Click Element    xpath=//input[@id='SubscriptionAgreement']
   Execute Javascript   document.getElementById('SubscriptionAgreement').click()
   Click Element    name=start my free trial
