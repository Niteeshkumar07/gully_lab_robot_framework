*** Settings ***
Resource    ../../resources/pages/home_page.robot
Resource    ../../resources/common_resource.robot
Resource    ../../resources/pages/search_page.robot
Resource    ../../resources/pages/login_page.robot
Resource    ../../resources/pages/Cart_page.robot


#Suite Setup   Load Environment
Test Setup  Open Application        https://gullylabs.com/
Test Teardown   Close Application

*** Test Cases ***
TC003 Search Product
    [Tags]  Functional

    Home Page
    Login the user  neverusedind@gmail.com  Pankaj@123
    Search the product      shoes
    Page Should Not Contain    No results found for
    Add to cart
    Sleep    3s
    

TC008 Search non-existing credentials
    [Tags]  Functional

    Home Page
    Login the user  ${USER_EMAIL}   ${USER_PWD}
    Search the product      shoes
    Wait Until Page Contains    No results found for



    