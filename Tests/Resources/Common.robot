*** Settings ***
Library  AppiumLibrary

*** Variables ***
${hub_url}  http://localhost:4444/wd/hub
${deviceName}  Android Device
${platformName}  Android
${platformVersion}  5.1.1


*** Keywords ***
Begin Test Case

    #Open Application  ${hub_url}  deviceName='Android Device'  platformName=Android  platformVersion=5.1.1  appPackage=com.surveymonkey  appActivity=com.surveymonkey.login.activities.LandingActivity
    Open Application  ${hub_url}  ${deviceName}  ${platformName}  ${platformVersion}  appPackage=com.surveymonkey  appActivity=com.surveymonkey.login.activities.LandingActivity
    sleep  5
    set appium timeout  30

End Test Case
    close application
