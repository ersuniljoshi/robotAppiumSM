*** Settings ***
Library  AppiumLibrary

*** Keywords ***
Add text ques to survey
    comment  click on  +
    wait until page contains element  xpath=//android.widget.LinearLayout[@resource-id='com.surveymonkey:id/floating_action_main_container_big']
    click element  xpath=//android.widget.LinearLayout[@resource-id='com.surveymonkey:id/floating_action_main_container_big']
    sleep  1
    comment  choose "text" type of ques.
    click element  xpath=//android.widget.LinearLayout[6]/android.widget.TextView[@text='Text']
text survey is created
    comment  enter 1st ques single text type
    wait until page contains element  xpath=//android.widget.EditText
    input text  xpath=//android.widget.EditText  A survey about Infobeans
    comment  click on save
    click element  xpath=//android.widget.TextView[@resource-id='com.surveymonkey:id/action_save']

