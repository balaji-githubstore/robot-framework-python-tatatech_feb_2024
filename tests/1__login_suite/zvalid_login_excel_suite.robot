*** Settings ***
Documentation   This suite tests the valid credential are allowed to access portal.

Resource    ../../resource/base/CommonFunctionality.resource

Library     DataDriver      file=../../test_data/open_emr_data.xlsx           sheet_name=Valid Login Data

Test Setup      Launch Browse And Navigate To Url
Test Teardown   Close Browser

Test Template   Valid Login Template

*** Test Cases ***
Valid_Login_Test_${test_case_id}


*** Keywords ***
Valid Login Template
    [Arguments]     ${username}     ${password}    ${language}     ${expected_title}
    Input Text    id=authUser    ${username}
    Input Password    css=#clearPass    ${password}
    Select From List By Label    xpath=//select[@name='languageChoice']    ${language}
    Click Element    id=login-button
    Title Should Be    ${expected_title}