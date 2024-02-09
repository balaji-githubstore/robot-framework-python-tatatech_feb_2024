*** Settings ***
Documentation   This suite tests the invalid credential are allowed to access portal.

Resource    ../../resource/base/CommonFunctionality.resource

Test Setup      Launch Browse And Navigate To Url
Task Teardown   Close Browser

*** Test Cases ***
Valid InvalidLogin Test
    Input Text    id=authUser    john
    Input Password    css=#clearPass    john123
    Select From List By Label    xpath=//select[@name='languageChoice']    English (Indian)
    Click Element    id=login-button
    Element Text Should Be    xpath=//p[contains(text(),'Invalid')]    Invalid username or password


