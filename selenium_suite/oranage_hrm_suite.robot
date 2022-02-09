*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1 Valid Login
      Append To Environment Variable    Path      ${EXECDIR}\\drivers
      Open Browser     url=https://opensource-demo.orangehrmlive.com/        browser=chrome
      Input Text    id=txtUsername       Admin
      Input Password    id=txtPassword      admin123
      Click Element    name=Submit
      ${url}  Get Location
      Log To Console    ${url}
      Click Element     id=welcome
      Sleep    5s
      Click Element   link=logout
      Close Browser