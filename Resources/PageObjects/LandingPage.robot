*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${LANDING_SEARCH_ICON} =         css:body > header > nav > div.uk-navbar-right > ul > li.search-icon

*** Keywords ***
Navigate To
    [Arguments]                             ${LP_URL}
    go to       ${LP_URL}

Verify Page Loaded
    wait until page contains element        ${LANDING_SEARCH_ICON}
