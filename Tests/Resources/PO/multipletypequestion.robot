*** Settings ***
Library  AppiumLibrary
Resource  ../locator.robot

*** Keywords ***
Add Multiple Question To Survey
    comment  click on +
    wait until page contains element  ${click_on_+_icon}
    click element  ${click_on_+_icon}
    wait until page contains element  ${select_multiple_type_ques}
    click element  ${select_multiple_type_ques}

Multiple Type Is Created
    wait until page contains element  ${edit_ques_field}
    input text  ${edit_ques_field}  Best Team of Infobeans?
    hide keyboard
    wait until page contains element  ${first_option}
    comment  enter multiple ques
    input text  ${first_option}  Survey Monkey
    sleep  1
    input text  ${second_option}  ICC
    sleep  1
    input text   ${third_option}  Trex
    sleep  1
    click element  ${save_button}
