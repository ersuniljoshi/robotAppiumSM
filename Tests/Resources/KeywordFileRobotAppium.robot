*** Settings ***
Documentation  This as a test on survey monkey
Library  AppiumLibrary
Resource  ./PO/createSMsurvey.robot
Resource  ./PO/texttypequestion.robot
Resource  ./PO/commenttypequestion.robot
Resource  ./PO/dropdowntypequestion.robot
Resource  ./PO/matrixtypequestion.robot
Resource  ./PO/multipletypequestion.robot
Resource  ./PO/preview.robot

*** Keywords ***
User do sign in
    createSMsurvey.Do Sign In

User is on create survey page
    createSMsurvey.Navigate To Create Survey Page

User creates new survey
    createSMsurvey.Create A New Survey

User choose text type question
    texttypequestion.Add Text Question To Survey

User creates text ques survey
    texttypequestion.Text Survey Is Created

User choose comment type question
    commenttypequestion.Add Comment Question To Survey

User creates comment type survey
    commenttypequestion.Comment Survey Is Created

User choose dropdown type question
    dropdowntypequestion.Add Dropdown Question To Survey

User creates dropdown type survey
     dropdowntypequestion.Dropdown Survey Is Created

User choose matrix type question
    matrixtypequestion.Add Matrix-Rating Question To Survey

User creates matrix type survey
     matrixtypequestion.Matrix Survey Is Created

User choose multipleques type
    multipletypequestion.Add Multiple Question To Survey

User creates multiple type survey
     multipletypequestion.Multiple Type Is Created

User is on create survey page again
    createSMsurvey.Click On Create Survey

User clicks on home button
    preview.Click On Home Button

User preview the result on page
    preview.Preview The Result

User do sign out
    createSMsurvey.Do Sign Out
