*** Settings ***
Resource    Resources.resource
Library    Browser


*** Test Cases ***
Login Test
    Open New Page
    Login the user
    Signout the user
