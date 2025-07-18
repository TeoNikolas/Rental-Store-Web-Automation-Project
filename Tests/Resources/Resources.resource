*** Settings ***
Library    Browser

*** Variables ***
${URL}    https://rentalstore.azurewebsites.net/
${USERNAME}
${PASSWORD}

*** Keywords ***
Open Browser
    ${BROWSER}=    New Browser    chromium    headless=false
    ${CONTEXT}=    New Context    viewport={'width':1200, 'height':700}
    ${PAGE}=    New Page    ${URL}
    Set Suite Variable    ${PAGE}    
Authenticate user    
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Click    xpath=//a[@id='login']
    Type Text    xpath=//a[@id='login']    ${USERNAME}
    Type Secret    xpath=//input[@id='id_password']    ${PASSWORD}
    Click    xpath=//button[@type='submit']

Signout
    Wait For Elements State    xpath=//a[@id='logout']    enabled
    Click    xpath=//a[@id='logout']