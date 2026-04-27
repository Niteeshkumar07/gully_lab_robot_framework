*** Settings ***
Resource    ../../resources/pages/home_page.robot
Resource    ../../resources/common_resource.robot
Resource    ../../resources/pages/login_page.robot

#Suite Setup   Load Environment
Test Setup  Open Application        https://gullylabs.com/
Test Teardown   Close Application

*** Test Cases ***
TC001 Login User
    [Tags]  Functional
    Home Page
    Login the user  ${USER_EMAIL}   ${USER_PWD}
    Sleep    3s

TC007 Login With invalid credentials
    [Tags]  Functional
    Home Page
    Login the user    phonk    hallabol

    Page Should Contain    Incorrect email or password.

    Sleep   3s