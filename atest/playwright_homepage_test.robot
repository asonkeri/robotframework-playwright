*** Settings ***
Resource          ../resources/common.robot
Resource          ../resources/playwright_homepage_keywords.robot
Suite Setup       Open New Browser
Documentation     This test suite the most important feature of the Playwright homepage:
...               toggling the dark mode

*** Test Cases ***
Change Theme
    [Documentation]    Page is switched from "light" to "dark" mode when theme is toggled
    [Setup]    Open Playwright Homepage
    Given Theme Is Set To "light"
    When Change theme to "dark" mode
    Then We see "dark" mode
