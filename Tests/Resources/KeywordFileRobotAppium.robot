*** Settings ***
Documentation  This as a test on survey monkey
Library  AppiumLibrary
Resource  ./PO/createSMsurvey.robot
Resource  ./PO/texttypequestion.robot
Resource  ./PO/commenttypequestion.robot
Resource  ./PO/dropdowntypequestion.robot
Resource  ./PO/matrixtypequestion.robot
Resource  ./PO/multipletypequestion.robot
Resource  ./PO/landingpage.robot
Resource  ./PO/preview.robot

*** Keywords ***
User do sign in
    createSMsurvey.Do sign in

User is on create survey page
    createSMsurvey.Navigate to create survey page

User creates new survey
    createSMsurvey.Create a new survey

User choose text type question
    texttypequestion.Add text ques to survey

User creates text ques survey
    texttypequestion.text survey is created

User choose comment type question
    commenttypequestion.Add comment ques to survey

User creates comment type survey
    commenttypequestion.comment survey is created

User choose dropdown type question
    dropdowntypequestion.Add dropdown ques to survey

User creates dropdown type survey
     dropdowntypequestion.dropdown survey is created

User choose matrix type question
    matrixtypequestion.Add Matrix/Rating ques to survey

User creates matrix type survey
     matrixtypequestion.matrix survey is created

User choose multipleques type
    multipletypequestion.Add multiple ques to survey

User creates multiple type survey
     multipletypequestion.multiple type is created

User is on create survey page again
    createSMsurvey.Click on create survey

User clicks on home button
    preview.Click on home button

User preview the result on page
    preview.Preview the result

User do sign out
    createSMsurvey.Do sign out
