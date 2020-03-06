*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${SEARCH_ICON} =                        css:body > header > nav > div.uk-navbar-right > ul > li.search-icon
${SEARCH_DIALOG_BUTTON} =               css:#search-form > div > button
${SEARCH_DIALOG_RADIO_CATALOGUE} =      css:#search-form > div > fieldset > label:nth-child(5)

*** Keywords ***
Click Landing Page Search Icon
    Click Element                           ${SEARCH_ICON}

Verify Dialog Loaded
    Wait Until Page Contains Element        ${SEARCH_DIALOG_BUTTON}

Set Catalogue Parameters
    [Arguments]                             ${SEARCH_TEXT}
    Click Element                           ${SEARCH_DIALOG_RADIO_CATALOGUE}
#    Input Text          id=query            ${SEARCH_TEXT_BOOK}
    Input Text          id=query            ${SEARCH_TEXT}

Perform Search
    Click Button                            ${SEARCH_DIALOG_BUTTON}
    Sleep               4 seconds


