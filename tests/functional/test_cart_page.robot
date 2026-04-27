*** Settings ***
Resource    ../../resources/pages/home_page.robot
Resource    ../../resources/common_resource.robot
Resource    ../../resources/pages/login_page.robot
Resource    ../../resources/pages/Cart_page.robot
Resource    ../../resources/pages/search_page.robot

Suite Setup   Load Environment
Test Setup     Open Application
Test Teardown  Close Application

*** Test Cases ***
TC004 Add Product to cart
    [Tags]  Functional
    Home Page
    Login the user    ${USER_EMAIL}   ${USER_PWD}
    Search the product    shoes
    Add to cart
    
    Sleep    3s









