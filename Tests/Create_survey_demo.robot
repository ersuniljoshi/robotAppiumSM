*** Settings ***
Library  AppiumLibrary
Resource  Resources/KeywordFileRobotAppium.robot
Resource  Resources/Common.robot
Test Setup  Begin Test Case
Test Teardown  End Test Case

*** Test Cases ***
Test_CreateSurvey

    [Documentation]  creation of survey
    Given User do sign in
    Given User is on create survey page
    And User creates new survey
    And User choose text type question
    And User creates text ques survey
    And User choose comment type question
    And User creates comment type survey
    And User choose dropdown type question
    And User creates dropdown type survey
    And User choose matrix type question
    And User creates matrix type survey
    And User choose multipleques type
    And User creates multiple type survey
    When User clicks on home button
    Then User preview the result on page

Test_ClickCreateSurvey

    [Documentation]  click on create survey
    Given User is on create survey page
    And User creates new survey


Test_CreateSurveyAgain

    [Documentation]  Creation of survey again
    Given User do sign out
