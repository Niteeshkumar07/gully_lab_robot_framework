*** Settings ***
Resource    ../../resources/pages/home_page.robot
Resource    ../../resources/common_resource.robot
Resource    ../../resources/pages/search_page.robot
Resource    ../../resources/pages/login_page.robot
Resource    ../../resources/pages/Cart_page.robot
Resource    ../../resources/pages/logout_page.robot


#Suite Setup   Load Environment
Test Setup  Open Application    https://gullylabs.com/
Test Teardown   Close Application

*** Test Cases
TC006 Complete user journey (Login to Logout)
    [Tags]  E2E
    Home Page
    Login the user  neverusedind@gmail.com   Pankaj@123
    Search the product      shoes
    Add to cart

    Logout the user
    Sleep    3s



