*** Settings ***
Library           Browser
Library           ./ExampleLibrary.py
Documentation     Keywords specific to the Playwright homepage

*** Variables ***
${theme toggle}    css=nav >> div:has(input[type="checkbox"]) >> div[role="button"]

*** Keywords ***
Open Playwright Homepage
    New Page    ${BASE URL}

Theme Is Set To "${mode}"
    LocalStorage Set Item    theme    ${mode}
    Reload

Change Theme To "${mode}" Mode
    ${theme}    Get Theme
    IF    '${theme}' != '${mode}'
        Click    ${theme toggle}
    END

We See "${mode}" Mode
    ${theme}    Get Theme
    Should Be Equal    ${mode}    ${theme}
