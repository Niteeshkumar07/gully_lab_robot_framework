*** Settings ***
Resource    ../../resources/pages/home_page.robot
Resource    ../../resources/common_resource.robot
Resource    ../../resources/pages/login_page.robot
Resource    ../../resources/pages/logout_page.robot

#Suite Setup   Load Environment
Test Setup  Open Application        https://gullylabs.com/
Test Teardown   Close Application

*** Test Cases ***
TC002 Logout functionality

    [Tags]  Functional
    Home Page
    Login the user    neverusedind@gmail.com     Pankaj@123
    Logout the user

    Sleep   3s