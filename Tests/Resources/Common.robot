*** Settings ***
Library  AppiumLibrary
Library  String

*** Variables ***
${hub_url}  http://localhost:4444/wd/hub
${deviceName}
${platformName}  Android
${platformVersion}  5.1.1


*** Keywords ***
Begin Test Case
    ${deviceName} =  Convert to Lowercase  ${deviceName}
    log to console  ${deviceName}
    #Open Application  ${hub_url}  deviceName='Android Device'  platformName=Android  platformVersion=5.1.1  appPackage=com.surveymonkey  appActivity=com.surveymonkey.login.activities.LandingActivity
    Open Application  ${hub_url}  deviceName=${deviceName}  platformName=Android  platformVersion=7.1.1  appPackage=com.surveymonkey  appActivity=com.surveymonkey.login.activities.LandingActivity

    sleep  5
    set appium timeout  30

End Test Case
    close application
