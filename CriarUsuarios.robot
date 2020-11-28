*** Settings ***
Library  SeleniumLibrary
Variables    Variables.py
Test Setup    Run Keywords    Open Browser    ${PROD_URL}    ${BROWSER}
    ...              AND   Set Selenium Speed    ${SELSPEED}    AND    maximize browser window
#Test TearDown    Close Browser 

***Variables***
${BROWSER}    chrome
${SELSPEED}    0.25
${SENHA}    123456
${NOMEALUNO}    AlunoE2E
${NOMECADI}    CadiE2E
${NOMEEMPRESARIO}    EmpresarioE2E
${COMPANYNAME}    EmpresaE2E
${CNPJ}    66386932000122
${NOMEPROFESSOR}    ProfessorE2E
${QA_URL}    http://ec2-3-138-123-144.us-east-2.compute.amazonaws.com/
${PROD_URL}    http://ec2-54-204-105-109.compute-1.amazonaws.com/
${DEV_URL}    http://antenas-front.herokuapp.com/
${TITULO_PROJETO}    Projeto E2E
${DESC_PROJETO}    Descricao do Projeto E2E
${LINK_PROJETO}    projetoe2e.com.br
${STEP_ZERO}    Aprovacao da Criacao do Projeto
${STEP_ONE}    Aprovacao do Projeto
${STEP_TWO}    Aprovacao da Descricao Completa do Projeto
${$STEP_THREE}    Aprovacao do Local, Data e Hora da Reuniao
${STEP_FOUR}    Aprovacao da Reuniao
${DESC_FULL}    Descricao Completa do Projeto
${DESC_TECNO}    Descricao Tecnologica
${LINK_2_PROJETO}    projetoe2elink2.com.br
${REUNIAO_LOCAL}    FATEC Sao Jose dos Campos
${DATA_E_HORA}    2020-12-11T15:00
${ENTREGA_PROJ}    Entrega do Projeto E2E
 
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
