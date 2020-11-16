*** Settings ***
Library  SeleniumLibrary
Variables    Variables.py
Test Setup    Run Keywords  Open Browser  ${PROD_URL}  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}    
#Test TearDown    Close Browser    

*** Test Cases ***
Criar Aluno
    click    xpath=//div[@id='root']/article/nav/div/a[2]/button/span
    click    name=name
    type    name=name    ${NOMEALUNO}
    click    name=email
    type    name=email    ${NOMEALUNO}@email.com
    click    name=password
    type    name=password    ${SENHA}
    mouseDown    id=mui-component-select-type
    click    xpath=/html/body/div[2]/div[3]/ul/li[3]
    click    xpath=/html/body/div/div/div/div[2]/div/div/h2
    click    xpath=//div[@id='root']/div/div/div[2]/div/div/section/form/div[5]/button/span

Criar Cadi
    click    xpath=//div[@id='root']/article/nav/div/a[2]/button/span
    click    name=name
    type    name=name    ${NOMECADI}
    click    name=email
    type    name=email    ${NOMECADI}@email.com
    click    name=password
    type    name=password    ${SENHA}
    mouseDown    id=mui-component-select-type
    click    xpath=/html/body/div[2]/div[3]/ul/li[2]
    click    xpath=/html/body/div/div/div/div[2]/div/div/h2
    click    xpath=//div[@id='root']/div/div/div[2]/div/div/section/form/div[5]/button/span
    
Criar Empresario
    click    xpath=//div[@id='root']/article/nav/div/a[2]/button/span
    click    name=name
    type    name=name    ${NOMEEMPRESARIO}
    click    name=email
    type    name=email    ${NOMEEMPRESARIO}@email.com
    click    name=password
    type    name=password    ${SENHA}
    mouseDown    id=mui-component-select-type
    click    xpath=/html/body/div[2]/div[3]/ul/li[1]
    click    name=company
    type    name=company    ${COMPANYNAME}
    click    name=cnpj
    type    name=cnpj    ${CNPJ}
    click    xpath=/html/body/div/div/div/div[2]/div/div/h2
    click    xpath=/html/body/div/div/div/div[2]/div/div/section/form/div[7]/button/span[1]
    
Criar Professor
    click    xpath=//div[@id='root']/article/nav/div/a[2]/button/span
    click    name=name
    type    name=name    ${NOMEPROFESSOR}
    click    name=email
    type    name=email    ${NOMEPROFESSOR}@email.com
    click    name=password
    type    name=password    ${SENHA}
    mouseDown    id=mui-component-select-type
    click    xpath=/html/body/div[2]/div[3]/ul/li[4]
    click    xpath=/html/body/div/div/div/div[2]/div/div/h2
    click    xpath=//div[@id='root']/div/div/div[2]/div/div/section/form/div[5]/button/span

*** Keywords ***
open
    [Arguments]    ${element}
    Go To          ${element}

clickAndWait
    [Arguments]    ${element}
    Click Element  ${element}

click
    [Arguments]    ${element}
    Click Element  ${element}

sendKeys
    [Arguments]    ${element}    ${value}
    Press Keys     ${element}    ${value}

submit
    [Arguments]    ${element}
    Submit Form    ${element}

type
    [Arguments]    ${element}    ${value}
    Input Text     ${element}    ${value}

selectAndWait
    [Arguments]        ${element}  ${value}
    Select From List   ${element}  ${value}

select
    [Arguments]        ${element}  ${value}
    Select From List   ${element}  ${value}

verifyValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

verifyTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertConfirmation
    [Arguments]                  ${value}
    Alert Should Be Present      ${value}

assertText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

assertTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

waitForVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

waitForTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

waitForTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

doubleClick
    [Arguments]           ${element}
    Double Click Element  ${element}

doubleClickAndWait
    [Arguments]           ${element}
    Double Click Element  ${element}

goBack
    Go Back

goBackAndWait
    Go Back

runScript
    [Arguments]         ${code}
    Execute Javascript  ${code}

runScriptAndWait
    [Arguments]         ${code}
    Execute Javascript  ${code}

setSpeed
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

setSpeedAndWait
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

verifyAlert
    [Arguments]              ${value}
    Alert Should Be Present  ${value}
