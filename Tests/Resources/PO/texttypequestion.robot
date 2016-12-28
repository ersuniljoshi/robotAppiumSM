*** Settings ***
Library  AppiumLibrary
Resource  ../locator.robot

*** Keywords ***
Add text ques to survey
    comment  click on  +
    wait until page contains element  ${click_on_+_icon}
    click element  ${click_on_+_icon}
    sleep  1
    comment  choose "text" type of ques.
    click element  ${select_text_type_ques}
text survey is created
    comment  enter 1st ques single text type
    wait until page contains element  ${edit_ques_field}
    input text  ${edit_ques_field}  A survey about Infobeans
    comment  click on save
    click element  ${save_button}

