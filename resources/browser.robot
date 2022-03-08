*** Settings ***
Library           Browser

*** Variables ***
${BROWSER}        chromium
${HEADLESS}       true
${BASE URL}       https://playwright.dev
${theme toggle}    css=nav >> div:has(input[type="checkbox"]) >> div[role="button"]

*** Keywords ***
Open New Browser
    New Browser    browser=${BROWSER}    headless=${HEADLESS}
    New Context    tracing=${OUTPUT DIR}/traces.zip
