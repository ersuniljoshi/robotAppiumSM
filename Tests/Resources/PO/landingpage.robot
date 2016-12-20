*** Settings ***
Library  AppiumLibrary

*** Variables ***
${REMOTE_URL}  http://172.16.20.10:4723/wd/hub


*** Keywords ***
TestStart
    Open Application  ${REMOTE_URL}  deviceName='Android Device'  platformName=Android  platformVersion=5.1.1  appPackage=com.surveymonkey  appActivity=com.surveymonkey.login.activities.LandingActivity
    sleep  20

