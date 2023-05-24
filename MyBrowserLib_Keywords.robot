*** Settings ***
Documentation   Keywords  for automation practice project
Library   Browser
Library  FakerLibrary
Resource  MyBrowserLib_Variables.robot



*** Keywords ***
Go to the login page
    New Browser   Chromium    headless=false
    New Page      http://automationpractice.com/index.php?
    Click    xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a



Enter email for new user and click the create account button
      ${email}=  FakerLibrary.email
      log   ${email}
      Set Test Variable    ${email}
      Fill Text    id=email_create    ${email}
      Click    id=SubmitCreate


Enter Firsname, Lastname and Password
     [Arguments]    ${firstname}  ${lastname}    ${password}
     Fill Text    ${USER_FIRSTNAME}     ${firstname}
     Fill Text     ${USER_LASTNAME}     ${lastname}
     Fill Text    ${NEW_USER_PASSWORD}    ${password}



Select user date of birth in days, months and years
     #Sleep    5
     Select Options By    ${DOB_DAYS}       Value     10
     #Sleep    5
     Select Options By    ${DOB_MONTHS}     index     9
     #Sleep    5
     Select Options By    ${DOB_YEARS}      Value     1990


Enter latter firstname and lastname
    [Arguments]            ${firstname}               ${lastname}
    Fill Text              ${LATTER_FIRSTNAME}          ${firstname}
    Fill Text              ${LATTER_LASTNAME}           ${lastname}




Enter Address, City, State, Postcode, Mobile, Alias and click on Register
    Fill Text                   ${USER_ADDRESS}            Testing street
    Fill Text                   ${USER_CITY}               Chicago
    Select Options By           ${USER_STATE}     Text    Illinois
    Fill Text                   ${USER_POSTCODE}           00000
    Fill Text                   ${USER_MOBILE}             12345
    Fill Text                   ${ADD_ALIAS}               QA House
    Click                       ${REGISTER_BTN}
    Get Text      xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a/span   ==  Lola Gold
