*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${FINAL_RESULT_HEADER} =               css:#content-start
${FINAL_RESULT_SUBHEADER} =            xpath://*[@id="1029410095"]/div[1]/div/div[1]/div[2]/h2
${FINAL_RESULT_SUBHEADER_TEXT} =       Clear, Concise, and Effective Programming

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element        ${FINAL_RESULT_HEADER}

Confirm Result Matches Search Term
    Element Should Contain      ${FINAL_RESULT_HEADER}          ${SEARCH_TEXT_BOOK}
    Element Should Contain      ${FINAL_RESULT_SUBHEADER}       ${FINAL_RESULT_SUBHEADER_TEXT}
