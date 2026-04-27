*** Settings ***
Library     SeleniumLibrary
Resource    ../../locators/Search_page_locators.robot

*** Keywords ***
Search the product
    [Arguments]     ${search_item}
    Click Element    ${search_icon}
    Sleep    5s
    Input Text    ${search_field}   ${search_item}
#    Press Keys    ${search_field}    ENTER
    Wait Until Element Is Visible    ${search_btn}
    Click Element    ${search_btn}


#io