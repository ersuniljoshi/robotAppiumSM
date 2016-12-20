*** Settings ***
Documentation  This is a basic info about the creation of surveys1
Library  AppiumLibrary

*** Variables ***
${REMOTE_URL}  http://localhost:4723/wd/hub

*** Keywords ***
Begin Test Case
    Open Application  ${REMOTE_URL}  deviceName='Android Device'  platformName=Android  platformVersion=5.1.1  appPackage=com.surveymonkey  appActivity=com.surveymonkey.login.activities.LandingActivity
    #wait until page contains element  xpath=//android.widget.Button[@text='SIGN IN']
    sleep  5
    set appium timeout  20

End Test Case
    close application