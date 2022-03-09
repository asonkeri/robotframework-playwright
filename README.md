# Robot and Playwright

## Requirements

- Python >= 3.8

## Setup

- Install Robot Framework and other required libraries: `pip install -r requirements.txt`
- Initialize rfbrowser: `rfbrowser init`

## Run tests

Run `robot -d results atest`.

Runs the tests by default using chromium browser in headless mode.

- To specify browser: `robot -d results -v BROWSER:firefox atest `
- To disable headless mode: `robot -d results -v HEADLESS:false atest`

## Project structure

Acceptance tests are located in `atest` directory

Keywords and test data in `resources` directory:

- `common.robot`: Common keywords for the whole test suite
- `playwright_homepage.robot`: Keywords specific to Playwright homepage
- `ExampleLibrary.py`: Simple keyword library example in Python