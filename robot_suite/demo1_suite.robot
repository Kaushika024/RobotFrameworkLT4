*** Settings ***
Library     DateTime

*** Test Cases ***
TC1 Print Name
    Log To Console    hello,everyone
    
TC2 Print Date
    ${date}      Get Current Date
    Log To Console    ${date}
 
TC3 Store Data
    Set Local Variable    ${name}       Kaushika
    Log To Console    ${name}
    Log  hello,${name}
    
    ${title}    Set Variable    robotframeworksession
    Log To Console    ${title}

#store two number and add it
TC4 Add Number
    Set Local Variable    ${num1}   5
    Set Local Variable    ${num2}   3
    ${res}      Evaluate      ${num1}+${num2}
    Log To Console    ${res}

TC5 Area of Circle
    Set Local Variable    ${radius}     10
    ${res}      Evaluate    3.14*${radius}*${radius}
    Log To Console    ${res}

TC6
    Set Local Variable      ${browser}      chrome
    IF    '${browser}'=='chrome'
               Log To Console    Yes! it's chrome
    END

TC7 For Loop
    FOR    ${i}    IN RANGE     1     11      1
          Log To Console    ${i}
    END

TC8
   Log To Console    ${EXECDIR}
   Log To Console    ${CURDIR}
   Log To Console    ${EXECDIR}/drivers/chromedriver
