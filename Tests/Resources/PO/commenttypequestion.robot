*** Settings ***
Library  AppiumLibrary

*** Keywords ***



Add comment ques to survey
    comment  click on +
    wait until page contains element  xpath=//android.widget.LinearLayout[@resource-id='com.surveymonkey:id/floating_action_main_container_big']
    click element  xpath=//android.widget.LinearLayout[@resource-id='com.surveymonkey:id/floating_action_main_container_big']
    comment  choose Comment type of ques
    wait until page contains element  xpath=//android.widget.TextView[@text='Comment Box']
    click element  xpath=//android.widget.TextView[@text='Comment Box']
comment survey is created
    comment  enter 2nd ques comment type
    wait until page contains element  xpath=//android.widget.EditText
    input text  xpath=//android.widget.EditText  Tell us about infobeans
    comment  click on save
    click element  xpath=//android.widget.TextView[@resource-id='com.surveymonkey:id/action_save']