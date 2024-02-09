*** Settings ***
Resource       ../base/CommonFunctionality.resource

*** Variables ***
${USERNAME_LOCATOR}     id=authUser
${PASSWORD_LOCATOR}     css=#clearPass
${LANGUAGE_LOCATOR}     xpath=//select[@name='languageChoice']
${LOGIN_LOCATOR}        id=login-button

*** Keywords ***
Enter Username
    [Arguments]     ${username}
    Input Text    ${USERNAME_LOCATOR}    ${username}

Enter Password
    [Arguments]     ${username}
    Input Password      ${PASSWORD_LOCATOR}    ${username}

Select Language By Label
    [Arguments]     ${language}
    Select From List By Label    ${LANGUAGE_LOCATOR}    ${language}

Click Login
    Click Element    ${LOGIN_LOCATOR}