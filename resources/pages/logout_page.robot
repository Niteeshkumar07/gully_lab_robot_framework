*** Settings ***
Library     SeleniumLibrary
Resource    ../../locators/login_page_locators.robot

*** Keywords ***
Logout the user

    Execute Javascript    document.querySelector('shopify-account').shadowRoot.querySelector('a[href="/account"]').click()
    Wait Until Element Is Visible   ${logout_btn}
    Click Element    ${logout_btn}


#*** Keywords ***
#Get shadow Element
#    [Arguments]     ${parent_locator}   ${child_locator}
#    ${element}=     Execute Javascript
#    ...     return document.querySelector('${parent_locator}')
#    ...     .shadowRoot.querySelector('${child_locator}')
#    RETURN  ${element}




