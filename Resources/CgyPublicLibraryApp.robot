*** Settings ***
Resource        ./PageObjects/LandingPage.robot
Resource        ./PageObjects/SearchDialog.robot
Resource        ./PageObjects/SearchResultsPage.robot
Resource        ./PageObjects/FinalResultPage.robot

*** Variables ***


*** Keywords ***
Go to Landing Page
    LandingPage.Navigate To                     ${URL}
    LandingPage.Verify Page Loaded

Go to Search Dialog
    SearchDialog.Click Landing Page Search Icon
    SearchDialog.Verify Dialog Loaded

Set Catalogue Parameters | Book
    SearchDialog.Set Catalogue Parameters       ${SEARCH_TEXT_BOOK}

# Set Catalogue Parameters | Book2
#     SearchDialog.Set Catalogue Parameters       ${SEARCH_TEXT_BOOK2}

# Set Catalogue Parameters | Book3
#     SearchDialog.Set Catalogue Parameters       ${SEARCH_TEXT_BOOK3}


Perform Search Dialog Search
    SearchDialog.Perform Search

Go to Search Results
    SearchResultsPage.Verify Page Loaded
    SearchResultsPage.Click Selection

Go to Final Result Page
    FinalResultPage.Verify Page Loaded
    FinalResultPage.Confirm Result Matches Search Term
