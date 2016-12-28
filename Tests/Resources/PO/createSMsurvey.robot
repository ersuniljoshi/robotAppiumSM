*** Settings ***
Library  AppiumLibrary
Resource  ../locator.robot

*** Keywords ***

Do sign in
    click element  ${sign_in}
    input text  ${username}  InfoBeansP
    wait until page contains  InfoBeansP
    wait until page contains element  ${password}
    input password  ${password}  InfoBeans!@#
    click element  ${sign_in}
Navigate to create survey page
    wait until page contains element  ${create_survey_button}
    click element  ${create_survey_button}
Create a new survey
    wait until page contains element  ${new_survey}
    click element  ${new_survey}
    click element  ${new_survey_create_input_field}
    clear text  ${new_survey_create_input_field}
    input text  ${new_survey_create_input_field}  Survey1
    wait until page contains element  ${new_survey_create}
    comment  click on create
    click element  ${new_survey_create}
Click on create survey
    click element  ${wrong_create_survey}
Do sign out
    sleep  5
    click element  ${upper_home_button_sign_out}
    sleep  5
    wait until page contains element  ${inner_icon_sign_out}
    click element  ${inner_icon_sign_out}
    wait until page contains element  ${sign_out}
    click element  ${sign_out}


