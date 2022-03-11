*** Settings ***
Documentation    Base Test

Library    Browser
Library    ${EXECDIR}/resources/models/users.py

Resource    registration_actions.robot
Resource    database.robot

*** Variables ***
${BASE_URL}    https://getgeeks-dev.herokuapp.com

*** Keywords ***

Start Session
    New Browser    chromium       headless=False    slowMo=00:00:00.05
    New Page       ${BASE_URL}

End Session
    Take Screenshot
