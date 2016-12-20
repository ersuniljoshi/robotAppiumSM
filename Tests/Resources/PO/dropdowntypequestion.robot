*** Settings ***
Library  AppiumLibrary

*** Keywords ***

Add dropdown ques to survey
    comment  click on +
    wait until page contains element  xpath=//android.widget.LinearLayout[@resource-id='com.surveymonkey:id/floating_action_main_container_big']
    click element  xpath=//android.widget.LinearLayout[@resource-id='com.surveymonkey:id/floating_action_main_container_big']
    comment  choose dropdown
    wait until page contains element  xpath=//android.widget.TextView[@text='Dropdown']
    click element  xpath=//android.widget.TextView[@text='Dropdown']

dropdown survey is created
    comment  enter 3rd ques
    wait until page contains element  xpath=//android.widget.EditText[@index='0']
    input text  xpath=//android.widget.EditText[@index='0']  Are you a tester?
    hide keyboard
    wait until page contains element  xpath=//android.widget.EditText[@index='1']
    input text  xpath=//android.widget.EditText[@index='1']  Yes
    sleep  5
    hide keyboard
    wait until page contains element  xpath=//android.webkit.WebView[@content-desc='Survey Monkey']/android.view.View[5]/android.view.View[1]/android.view.View[1]/android.widget.EditText
    input text  xpath=//android.webkit.WebView[@content-desc='Survey Monkey']/android.view.View[5]/android.view.View[1]/android.view.View[1]/android.widget.EditText  No
    click element  xpath=//android.widget.TextView[@resource-id='com.surveymonkey:id/action_save']