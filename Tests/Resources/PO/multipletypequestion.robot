*** Settings ***
Library  AppiumLibrary

*** Keywords ***

Add multiple ques to survey

    comment  click on +
    wait until page contains element  xpath=//android.widget.LinearLayout[@resource-id='com.surveymonkey:id/floating_action_main_container_big']
    click element  xpath=//android.widget.LinearLayout[@resource-id='com.surveymonkey:id/floating_action_main_container_big']
    wait until page contains element  xpath=//android.widget.TextView[@text='Multiple Choice']
    click element  xpath=//android.widget.TextView[@text='Multiple Choice']
multiple type is created
    wait until page contains element  xpath=//android.widget.EditText
    input text  xpath=//android.widget.EditText  Best Team of Infobeans?
    hide keyboard
    wait until page contains element  xpath=//android.widget.EditText[@index='1']
    comment  enter multiple ques
    input text  xpath=//android.widget.EditText[@index='1']  Survey Monkey
    sleep  1
    input text  xpath=//android.webkit.WebView[@content-desc='Survey Monkey']/android.view.View[5]/android.view.View[1]/android.view.View[1]/android.widget.EditText  ICC
    sleep  1
    input text   xpath=//android.webkit.WebView[@content-desc='Survey Monkey']/android.view.View[6]/android.view.View[1]/android.view.View[1]/android.widget.EditText  Trex
    sleep  1
    click element  xpath=//android.widget.TextView[@resource-id='com.surveymonkey:id/action_save']
