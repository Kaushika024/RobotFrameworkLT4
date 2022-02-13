*** Settings ***
Library     OperatingSystem

*** Test Cases ***
TC1
    Log To Console    ${EXECDIR}${/}demo.txt
    File Should Exist    ${EXECDIR}${/}demo.txt

    Comment     to read the file
    ${output}   Get Binary File    ${EXECDIR}${/}demo.txt
    Log To Console    ${output}
    Log     ${output}

    Comment      copying the file
    Copy File    ${EXECDIR}${/}demo.txt    ${EXECDIR}${/}demo_new.txt

    Comment     delete the file
    Remove File    ${EXECDIR}${/}demo_new.txt

    Log Environment Variables
