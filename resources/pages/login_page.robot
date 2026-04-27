*** Settings ***
Library     SeleniumLibrary
Resource    ../../locators/login_page_locators.robot

*** Keywords ***
Login the user
    [Arguments]     ${user_email}   ${user_password}
    Input Text    ${login_email_field}    ${user_email}
    Log    Enter Email
    Input Text    ${login_password_field}    ${user_password}
    Log    Enter Password
    Click Element    ${login_btn}




