*** Settings ***
Library  AppiumLibrary
Resource  ../locator.robot

*** Keywords ***
Click On Home Button
    wait until page contains element  ${click_upper_home_button}
    click element  ${click_upper_home_button}
    sleep  3

Preview The Result
    wait until page contains element  ${preview_button}
    click element  ${preview_button}
    wait until page contains  A survey about Infobeans
    page should contain text  A survey about Infobeans
