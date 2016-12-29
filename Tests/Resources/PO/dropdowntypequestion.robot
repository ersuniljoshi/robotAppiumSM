*** Settings ***
Library  AppiumLibrary
Resource  ../locator.robot

*** Keywords ***

Add dropdown ques to survey
    comment  click on +
    wait until page contains element  ${click_on_+_icon}
    click element  ${click_on_+_icon}
    comment  choose dropdown
    wait until page contains element  ${select_dropdown_ques}
    click element  ${select_dropdown_ques}

dropdown survey is created
    comment  enter 3rd ques
    wait until page contains element  ${edit_dropdown_ques_field}
    input text  ${edit_dropdown_ques_field}  Are you a tester?
    hide keyboard
    wait until page contains element  ${first_option}
    input text  ${first_option}  Yes
    sleep  5
    hide keyboard
    wait until page contains element  ${second_option}
    input text  ${second_option}  No
    click element  ${save_button}
    
