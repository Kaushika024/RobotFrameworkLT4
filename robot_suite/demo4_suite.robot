*** Settings ***
Library    String

*** Test Cases ***
TC1
    Set Local Variable    ${val1}       $120,000,000
    ${val2}     Set Variable    $900,000

    ${val1}     Remove String    ${val1}    $   ,
    Log To Console    ${val1}

    ${val2}     Remove String    ${val2}    $   ,
    Log To Console    ${val2}

    ${num1}     Convert To Integer    ${val1}
    ${num2}     Convert To Number    ${val2}

    ${res}      Evaluate    ${num1}+${num2}
    Log To Console    ${res}

TC2
    Set Local Variable    ${mail}       kaushi@gmail.com

    @{list}     Split String    ${mail}     @
    Log To Console    ${list}[0]

    ${name}     Convert To Upper Case    ${list}[0]
    Log To Console    ${name}
    Should Be Equal    ${name}    KAUSHI
