*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${SEARCH_RESULTS_KEYWORD_TITLE} =       css:#content > div:nth-child(2) > div > div > div.row.cp-search-title > div.col-12.col-xs-12.search-title-block > div > div > div.search-title-rss > h1 > span
${SEARCH_RESULTS_MATCH} =               css:#content > div:nth-child(2) > div > div > div.cp-layout.results_container.drawer-layout-left.row > div.result-content.active.col-12.col-xs-12.col-sm-12.col-md-12.col-lg-9.cp-layout-main-content > section > section.results-list.row > div > ul > li > div.col-md-10.item-column > div > div.cp-search-result-item-info > div:nth-child(2) > div.cp-deprecated-bib-brief > h2 > a > span.title-content

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element        ${SEARCH_RESULTS_KEYWORD_TITLE}

Click Selection
    Element Should Contain                  ${SEARCH_RESULTS_MATCH}             ${SEARCH_TEXT_BOOK}
    Click Element                           ${SEARCH_RESULTS_MATCH}

