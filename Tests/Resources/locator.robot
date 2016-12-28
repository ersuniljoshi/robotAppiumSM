*** Settings ***
Library  AppiumLibrary

*** Variables ***
${click_on_+_icon}  xpath=//android.widget.LinearLayout[@resource-id='com.surveymonkey:id/floating_action_main_container_big']
${select_text_type_ques}  xpath=//android.widget.LinearLayout[6]/android.widget.TextView[@text='Text']
${edit_ques_field}  xpath=//android.widget.EditText
${save_button}  xpath=//android.widget.TextView[@resource-id='com.surveymonkey:id/action_save']
${select_comment_type_ques}  xpath=//android.widget.TextView[@text='Comment Box']
${select_dropdown_ques}  xpath=//android.widget.TextView[@text='Dropdown']
${edit_dropdown_ques_field}  xpath=//android.widget.EditText[@index='0']
${first_option}  xpath=//android.widget.EditText[@index='1']
${second_option}  xpath=//android.webkit.WebView[@content-desc='Survey Monkey']/android.view.View[5]/android.view.View[1]/android.view.View[1]/android.widget.EditText
${select_multiple_type_ques}  xpath=//android.widget.TextView[@text='Multiple Choice']
${third_option}  xpath=//android.webkit.WebView[@content-desc='Survey Monkey']/android.view.View[6]/android.view.View[1]/android.view.View[1]/android.widget.EditText
${select_matrix_type_ques}  xpath=//android.widget.TextView[@text='Matrix / Rating']
${click_upper_home_button}  xpath=//android.widget.RelativeLayout/android.view.View/android.support.v7.widget.LinearLayoutCompat/android.widget.TextView[@index='1']
${preview_button}  xpath=//android.widget.TextView[@text='Preview & Test']
${sign_in}  xpath=//android.widget.Button[@text='SIGN IN']
${username}  xpath=//android.widget.EditText[@resource-id='com.surveymonkey:id/username_input']
${password}  xpath=//android.widget.EditText[@resource-id='com.surveymonkey:id/password_input']
${create_survey_button}  xpath=//android.webkit.WebView[@content-desc='Survey Monkey']/android.view.View/android.view.View[3]/android.widget.Button[@content-desc='CREATE SURVEY']
${new_survey}  xpath=//android.widget.Button[@text='New Survey']
${new_survey_create_input_field}  xpath=//android.widget.EditText[@resource-id='com.surveymonkey:id/input_field']
${new_survey_create}  xpath=//android.widget.Button[@text='Create']
${wrong_create_survey}  xpath=//android.widget.Button1
${upper_home_button_sign_out}  xpath=//android.widget.ImageButton[@content-desc='Navigate up']
${inner_icon_sign_out}  xpath=//android.widget.RelativeLayout/android.widget.TextView[@text='y']
${sign_out}  xpath=//android.widget.Button[@content-desc='SIGN OUT']
