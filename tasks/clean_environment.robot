*** Settings ***
Documentation    Tasks to be executed to clean the environment after running all the suite of tests

Resource    ${EXECDIR}/resources/actions/database.robot

*** Tasks ***
Clean environment
    Delete all users from database
    Disconnect from Database