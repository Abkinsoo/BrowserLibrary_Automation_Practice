*** Settings ***
Documentation    Test based on BrowserLibrary Keywords
Library   Browser
Resource  MyBrowserLib_Keywords.robot
Resource  MyBrowserLib_Variables.robot

*** Test Cases ***
Create new account
      Set Browser Timeout    30 seconds
      Go to the login page
      Enter email for new user and click the create account button
      Enter Firsname, Lastname and Password    Lola    Gold    testing
      Select user date of birth in days, months and years
      Enter latter firstname and lastname    Lola    Gold
      Enter Address, City, State, Postcode, Mobile, Alias and click on Register



