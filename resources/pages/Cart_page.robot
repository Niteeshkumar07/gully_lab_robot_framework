*** Settings ***
Library     SeleniumLibrary
Library    String
Resource    ../../locators/cart_locators.robot

*** Keywords ***
Add to cart

    Wait Until Page Contains Element    ${click_product}
    Scroll Element Into View    ${click_product}
    Click Element    ${click_product}
    ${name_of_product}=    Get Text    ${prodcut_name}
    ${name_of_product}=    Replace String    ${name_of_product}    \n    ${SPACE}
    ${name_of_product}=    Strip String    ${name_of_product}
    ${name_of_product}=    Convert To Lower Case    ${name_of_product}
    Log To Console    ${name_of_product}

    ${class_attr}=    Get Element Attribute    ${male_btn}    class
    ${is_active}=    Run Keyword And Return Status    Should Contain    ${class_attr}    active
    IF    '${is_active}' == 'False'
        Click Element    ${male_btn}
    END

    Select From List By Index   ${size}    3

    Wait Until Element Is Enabled    ${add_cart}
    Click Element    ${add_cart}

    Sleep    5s

    Wait Until Element Is Visible    ${cart_product_name}   timeout=20s

    ${name_in cart}=    Get Text    ${cart_product_name}
    ${name_in cart}=    Convert To Lower Case    ${name_in cart}
    ${name_in cart}=    Strip String    ${name_in cart}
    Log To Console    ${name_in cart}

    Should Be Equal    ${name_in cart}    ${name_of_product}

    Click Element    ${close_cart}

    Sleep    10s
