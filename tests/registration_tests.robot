*** Settings ***
Documentation    Base Test
Resource         ${EXECDIR}/resources/actions/base_actions.robot

Test Setup       Start Session
Test Teardown    End Session

*** Test Cases ***
Register New User
    ${user}    Factory New User

    Set Suite Variable           ${user}
    Go To Signup Page
    Fill Signup Form             ${user}
    Submit Signup Form
    User Should Be Registered

Register Existing Email
    ${user}    Factory New User

    Insert user in database               ${user}
    Go To Signup Page
    Fill Signup Form                      ${user}
    Submit Signup Form
    Email Should Be Already Registered

Register Invalid Email
    ${user}                    Factory Invalid Email
    Go To Signup Page
    Fill Signup Form           ${user}
    Submit Signup Form
    Email Should Be Invalid

Obligated Fields
    ${user}                                Factory Obligated Fields
    Go To Signup Page
    Fill Signup Form                       ${user}
    Submit Signup Form
    Should Inform The Obligated Fields 
