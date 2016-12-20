*** Settings ***
Library  AppiumLibrary

*** Keywords ***

Click on home button
    wait until page contains element  xpath=//android.widget.RelativeLayout/android.view.View/android.support.v7.widget.LinearLayoutCompat/android.widget.TextView[@index='1']
    click element  xpath=//android.widget.RelativeLayout/android.view.View/android.support.v7.widget.LinearLayoutCompat/android.widget.TextView[@index='1']
    sleep  3
Preview the result
    wait until page contains element  xpath=//android.widget.TextView[@text='Preview & Test']
    click element  xpath=//android.widget.TextView[@text='Preview & Test']
    wait until page contains  A survey about Infobeans
    page should contain text  A survey about Infobeans


