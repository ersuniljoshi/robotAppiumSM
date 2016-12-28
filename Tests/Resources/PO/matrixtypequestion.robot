*** Settings ***
Library  AppiumLibrary
Resource  ../locator.robot

*** Keywords ***

Add Matrix/Rating ques to survey
    comment  click on +
    wait until page contains element  ${click_on_+_icon}
    click element  ${click_on_+_icon}
    wait until page contains element  ${select_matrix_type_ques}
    click element  ${select_matrix_type_ques}

matrix survey is created
    wait until page contains element  ${edit_ques_field}
    input text  ${edit_ques_field}  Best feature of SM
    click element  ${save_button}
    click element  ${save_button}


