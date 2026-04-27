*** Settings ***
Library     SeleniumLibrary
Resource    ../../locators/home_page_locators.robot

*** Keywords ***
Home Page
    Click Element    ${profile_icon}
    Log    Clicking on login link

