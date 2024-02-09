*** Settings ***
Documentation   This suite tests the valid credential are allowed to access portal.

Resource    ../../resource/base/CommonFunctionality.resource
Resource    ../../resource/pages/LoginPage.resource
Resource    ../../resource/pages/MainPage.resource

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
    Enter Username    ${username}
    Enter Password    ${password}
    Select Language By Label    ${language}
    Click Login
    Validate Main Page Title   ${expected_title}