*** Settings ***
Library  AppiumLibrary

*** Keywords ***

Add Matrix/Rating ques to survey
    comment  click on +
    wait until page contains element  xpath=//android.widget.LinearLayout[@resource-id='com.surveymonkey:id/floating_action_main_container_big']
    click element  xpath=//android.widget.LinearLayout[@resource-id='com.surveymonkey:id/floating_action_main_container_big']
    wait until page contains element  xpath=//android.widget.TextView[@text='Matrix / Rating']
    click element  xpath=//android.widget.TextView[@text='Matrix / Rating']

matrix survey is created
    wait until page contains element  xpath=//android.widget.EditText
    input text  xpath=//android.widget.EditText  Best feature of SM
    click element  xpath=//android.widget.TextView[@resource-id='com.surveymonkey:id/action_save']
    click element  xpath=//android.widget.TextView[@resource-id='com.surveymonkey:id/action_save']


