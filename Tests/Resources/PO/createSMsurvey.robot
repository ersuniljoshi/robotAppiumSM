*** Settings ***
Library  AppiumLibrary

*** Keywords ***

Do sign in
    click element  xpath=//android.widget.Button[@text='SIGN IN']
    input text  xpath=//android.widget.EditText[@resource-id='com.surveymonkey:id/username_input']  InfoBeansP
    wait until page contains  InfoBeansP
    wait until page contains element  xpath=//android.widget.EditText[@resource-id='com.surveymonkey:id/password_input']
    input password  xpath=//android.widget.EditText[@resource-id='com.surveymonkey:id/password_input']  InfoBeans!@#
    click element  xpath=//android.widget.Button[@text='SIGN IN']
Navigate to create survey page

    wait until page contains element  xpath=//android.webkit.WebView[@content-desc='Survey Monkey']/android.view.View/android.view.View[3]/android.widget.Button[@content-desc='CREATE SURVEY']
    click element  xpath=//android.webkit.WebView[@content-desc='Survey Monkey']/android.view.View/android.view.View[3]/android.widget.Button[@content-desc='CREATE SURVEY']
Create a new survey

    wait until page contains element  xpath=//android.widget.Button[@text='New Survey']
    click element  xpath=//android.widget.Button[@text='New Survey']
    click element  xpath=//android.widget.EditText[@resource-id='com.surveymonkey:id/input_field']
    clear text  xpath=//android.widget.EditText[@resource-id='com.surveymonkey:id/input_field']
    input text  xpath=//android.widget.EditText[@resource-id='com.surveymonkey:id/input_field']  Survey1
    wait until page contains element  xpath=//android.widget.Button[@text='Create']
    comment  click on create
    click element  xpath=//android.widget.Button[@text='Create']
Click on create survey
    click element  xpath=//android.widget.Button1
Do sign out
    sleep  5
    click element  xpath=//android.widget.ImageButton[@content-desc='Navigate up']
    sleep  5
    wait until page contains element  xpath=//android.widget.RelativeLayout/android.widget.TextView[@text='y']
    click element  xpath=//android.widget.RelativeLayout/android.widget.TextView[@text='y']
    wait until page contains element  xpath=//android.widget.Button[@content-desc='SIGN OUT']
    click element  xpath=//android.widget.Button[@content-desc='SIGN OUT']


