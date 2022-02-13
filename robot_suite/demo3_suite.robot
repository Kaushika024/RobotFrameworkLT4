*** Settings ***
Library    Collections

*** Comments ***
working with  local variable scalar, list, dic

*** Test Cases ***
TC1
    Set Local Variable    ${firstname}       Kaushi
    ${lastname}     Set Variable    S
    Log To Console    ${firstname} ${lastname}

    @{fruits}   Create List    apple    banana     grapes
    Log To Console    ${fruits}
    Log To Console    ${fruits}[0]

    FOR    ${color}    IN    @{fruits}
        Log To Console    ${color}
    END

    Log List   ${fruits}

    Set Global Variable    ${otp}   90000

TC2
    Log To Console    ${otp}
#    Log List   ${fruits}
    &{dic}   Create Dictionary   firstname=kaushi    lastname=S   mobile=89990
    Log To Console    ${dic}[lastname]
