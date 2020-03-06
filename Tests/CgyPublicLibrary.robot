*** Settings ***
Documentation  Test Suite on website https://calgarylibrary.ca
Library         SeleniumLibrary
Resource        ../Resources/CommonWeb.robot
Resource        ../Resources/CgyPublicLibraryApp.robot
Test Setup      CommonWeb.Begin Web Test
Test Teardown   CommonWeb.End Web Test

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/CgyPublicLibrary.robot
# robot -d results tests
# robot -d results -v SEARCH_TEXT_BOOK:"War and Peace" tests/CgyPublicLibrary.robot
# robot -d results -v URL:"https://www.google.com" tests/CgyPublicLibrary.robot

*** Variables ***
${URL} =        https://www.calgarylibrary.ca
${BROWSER} =    chrome
${SEARCH_TEXT_BOOK1} =                        Fluent Python
${SEARCH_TEXT_BOOK2} =                        War and Peace
${SEARCH_TEXT_BOOK3} =                        Jurassic Park




*** Test Cases ***
Catalogue General Search | Book1
    [Documentation]  Catalogue general search with passed in search term variable
    [Tags]  Smoke Test | Search
    Log     ${SEARCH_TEXT_BOOK1}
    CgyPublicLibraryApp.Go To Landing Page
    CgyPublicLibraryApp.Go To Search Dialog
    CgyPublicLibraryApp.Set Catalogue Parameters | Book1
    CgyPublicLibraryApp.Perform Search Dialog Search

Catalogue General Search | Book2
    [Documentation]  Catalogue general search with passed in search term variable
    [Tags]  Smoke Test | Search
    Log     ${SEARCH_TEXT_BOOK2}
    CgyPublicLibraryApp.Go To Landing Page
    CgyPublicLibraryApp.Go To Search Dialog
    CgyPublicLibraryApp.Set Catalogue Parameters | Book2
    CgyPublicLibraryApp.Perform Search Dialog Search

Catalogue General Search | Book3
    [Documentation]  Catalogue general search with passed in search term variable
    [Tags]  Smoke Test | Search
    Log     ${SEARCH_TEXT_BOOK3}
    CgyPublicLibraryApp.Go To Landing Page
    CgyPublicLibraryApp.Go To Search Dialog
    CgyPublicLibraryApp.Set Catalogue Parameters | Book3
    CgyPublicLibraryApp.Perform Search Dialog Search
