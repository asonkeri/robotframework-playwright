*** Settings ***
Library           Browser

*** Variables ***
${BROWSER}        chromium
${HEADLESS}       true
${BASE URL}       https://playwright.dev

*** Keywords ***
Open New Browser
    New Browser    browser=${BROWSER}    headless=${HEADLESS}
    New Context    tracing=${OUTPUT DIR}/traces.zip
