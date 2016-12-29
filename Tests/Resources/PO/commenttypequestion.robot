*** Settings ***
Library  AppiumLibrary
Resource  ../locator.robot

*** Keywords ***
Add Comment Question To Survey
    comment  click on +
    wait until page contains element  ${click_on_+_icon}
    click element  ${click_on_+_icon}
    comment  choose Comment type of ques
    wait until page contains element  ${select_comment_type_ques}
    click element  ${select_comment_type_ques}
    
Comment Survey Is Created
    comment  enter 2nd ques comment type
    wait until page contains element  ${edit_ques_field}
    input text  ${edit_ques_field}  Tell us about infobeans
    comment  click on save
    click element  ${save_button}
