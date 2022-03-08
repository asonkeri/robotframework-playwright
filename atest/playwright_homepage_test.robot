*** Settings ***
Resource          ../resources/browser.robot
Library           ../resources/ExampleLibrary.py
Suite Setup       Open New Browser

*** Test Cases ***
Change Theme
    [Setup]    Open Playwright Homepage
    Given Theme Is Set To "light"
    When Change theme to "dark" mode
    Then We see "dark" mode

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