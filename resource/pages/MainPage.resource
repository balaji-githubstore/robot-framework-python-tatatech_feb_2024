*** Settings ***
Resource       ../base/CommonFunctionality.resource


*** Keywords ***
Validate Main Page Title
    [Arguments]     ${expected_title}
    Title Should Be     ${expected_title}