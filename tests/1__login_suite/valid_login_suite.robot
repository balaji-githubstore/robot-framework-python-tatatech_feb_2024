*** Settings ***
Documentation   This suite tests the valid credential are allowed to access portal.

Resource    ../../resource/base/CommonFunctionality.resource

Test Setup      Launch Browse And Navigate To Url
Test Teardown   Close Browser

Test Template   Valid Login Template

*** Test Cases ***
Valid Login TC1
    admin   pass    English (Indian)    OpenEMR
Valid Login TC2
    accountant   accountant     English (Indian)      OpenEMR
Valid Login TC3
    physician   physician     Dutch      OpenEMR


*** Keywords ***
Valid Login Template
    [Arguments]     ${username}     ${password}    ${language}     ${expected_title}
    Input Text    id=authUser    ${username}
    Input Password    css=#clearPass    ${password}
    Select From List By Label    xpath=//select[@name='languageChoice']    ${language}
    Click Element    id=login-button
    Title Should Be    ${expected_title}