*** Settings ***
Library  SeleniumLibrary
Variables    Variables.py
Test Setup    Run Keywords  Open Browser  ${PROD_URL}  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}    AND    maximize browser window
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
Logar Empresario e Criar Projeto
    #Logar
    click    xpath=//div[@id='root']/article/nav/div/a/button/span
    click    name=email
    type    name=email    ${NOMEEMPRESARIO}@email.com
    click    name=password
    type    name=password    ${SENHA}
    click    xpath=//div[@id='root']/div/div/div[2]/div/div/h2
    click    xpath=//div[@id='root']/div/div/div[2]/div/div/section/form/div[3]/button/span
    sleep    3s
    #Clicar em Projetos no Menu Lateral
    click    xpath=/html/body/div/nav/ul/li[4]/a/span
    #Clicar na ABA Criar Projeto
    click    xpath=/html/body/div/article/div/div/div[1]/div/div/div/button[1]/span[1]
    #Nome do Projeto
    click    name=title
    type    name=title    ${TITULO_PROJETO}
    #Descricao do Projeto
    click    name=quickDescription
    type    name=quickDescription    ${DESC_PROJETO}
    #Link do Projeto
    click    name=linkOne
    type    name=linkOne    ${LINK_PROJETO}
    #Clicar no Botao Confirmar
    click    xpath=//div[@id='root']/article/h2
    click    xpath=//div[@id='root']/article/div/div/div[2]/div/div/form/div[4]/button/span

Logar Cadi e Aprovacao da Criaco do Projeto
    #Logar
    click    xpath=//div[@id='root']/article/nav/div/a/button/span
    click    name=email
    type    name=email    ${NOMECADI}@email.com
    click    name=password
    type    name=password    ${SENHA}
    click    xpath=//div[@id='root']/div/div/div[2]/div/div/h2
    click    xpath=//div[@id='root']/div/div/div[2]/div/div/section/form/div[3]/button/span
    sleep    3s
    #Clicar em Projetos no Menu Lateral
    click    xpath=/html/body/div/nav/ul/li[4]/a/span
    #Clicar na Lista de Empresarios
    sleep    3s 
    click    xpath=//div[@id='root']/article/div/div/div[2]/div/div/div/div/div/div
    sleep    3s
    #Selecionar Empresario
    click    id=react-select-empresario-option-5
    #Clicar na Lista de Projetos
    click    xpath=//div[@id='root']/article/div/div/div[2]/div/div/div[2]/div/div/div
    sleep    3s
    #Selecionar Projeto
    click    id=react-select-project-option-13
    sleep    3s
    #Clicar na Etapa
    click    xpath=/html/body/div/article/div/div/div[2]/div/div/div[4]/form/div[1]/div
    sleep    3s
    #Selecionar Etapa
    click    id=react-select-step-option-0
    sleep    3s
    #Aprova ou Reprova
    click    xpath=//*[@id="root"]/article/div/div/div[2]/div/div/div[4]/form/div[2]/div/label[1]/span[1]/span[1]/input
    #Justificativa
    click    name=state.reason
    type    name=state.reason    ${STEP_ZERO}
    #Clicar em Confirmar
    click    xpath=//div[@id='root']/article/div/div/div[2]/div/div/div[4]/form/div[4]/button/span 
    #APROVACAO DO PROJETO
    #Clicar na Etapa
    click    xpath=/html/body/div/article/div/div/div[2]/div/div/div[4]/form/div[1]/div
    sleep    3s
    #Selecionar Etapa
    click    id=react-select-step-option-1
    sleep    3s
    #Aprova ou Reprova
    click    xpath=//*[@id="root"]/article/div/div/div[2]/div/div/div[4]/form/div[2]/div/label[1]/span[1]/span[1]/input
    #Justificativa
    click    name=state.reason
    type    name=state.reason    ${STEP_ONE}
    #Clicar em Confirmar
    click    xpath=//div[@id='root']/article/div/div/div[2]/div/div/div[4]/form/div[4]/button/span
    
Logar Empresario e Fazer Descricao Completa do Projeto
    #Logar
    click    xpath=//div[@id='root']/article/nav/div/a/button/span
    click    name=email
    type    name=email    ${NOMEEMPRESARIO}@email.com
    click    name=password
    type    name=password    ${SENHA}
    click    xpath=//div[@id='root']/div/div/div[2]/div/div/h2
    click    xpath=//div[@id='root']/div/div/div[2]/div/div/section/form/div[3]/button/span
    sleep    3s
    #Clicar em Projetos no Menu Lateral
    click    xpath=/html/body/div/nav/ul/li[4]/a/span
    #Selecionar Aba Acompanhar
    click    xpath=/html/body/div/article/div/div/div[1]/div/div/div/button[2]/span[1]
    #Selecionar Projeto Desejado
    click    xpath=/html/body/div/article/div/div/div[3]/div/section/div/div
    sleep    3s
    click    id=react-select-project-option-13
    #Preenchimento das Informacoes
    sleep    3s
    click    name=fullDescription
    type    name=fullDescription    ${DESC_FULL}
    click    name=techDescription
    type    name=techDescription    ${DESC_TECNO}
    click    name=linkTwo
    type    name=linkTwo    ${LINK_2_PROJETO}
    click    name=reunion.place
    type    name=reunion.place    ${REUNIAO_LOCAL}
    click    name=reunion.possibleDate
    click    name=reunion.possibleDate
    type    name=reunion.possibleDate    ${DATA_E_HORA}
    #Clicar em Confirmar
    click    xpath=//div[@id='root']/article/div/div/div[3]/div/section/section/div/div[2]/div/div/div/div/form/div[10]/button/span  
    
Logar no CADI e Aprovacoes Seguintes
    #Logar 
    click    xpath=//div[@id='root']/article/nav/div/a/button/span
    click    name=email
    type    name=email    ${NOMECADI}@email.com
    click    name=password
    type    name=password    ${SENHA}
    click    xpath=//div[@id='root']/div/div/div[2]/div/div/h2
    click    xpath=//div[@id='root']/div/div/div[2]/div/div/section/form/div[3]/button/span
    sleep    3s
    #Clicar em Projetos no Menu Lateral
    click    xpath=/html/body/div/nav/ul/li[4]/a/span
    #Clicar na Lista de Empresarios
    sleep    3s 
    click    xpath=//div[@id='root']/article/div/div/div[2]/div/div/div/div/div/div
    sleep    3s
    #Selecionar Empresario
    click    id=react-select-empresario-option-5
    #Clicar na Lista de Projetos
    click    xpath=//div[@id='root']/article/div/div/div[2]/div/div/div[2]/div/div/div
    sleep    3s
    #Selecionar Projeto
    click    id=react-select-project-option-13
    sleep    3s
    #Clicar na Etapa
    click    xpath=/html/body/div/article/div/div/div[2]/div/div/div[4]/form/div[1]/div
    sleep    3s
    #Selecionar Etapa
    click    id=react-select-step-option-2
    sleep    3s
    #Aprova ou Reprova
    click    xpath=//*[@id="root"]/article/div/div/div[2]/div/div/div[4]/form/div[2]/div/label[1]/span[1]/span[1]/input
    #Justificativa
    click    name=state.reason
    type    name=state.reason    ${STEP_TWO}
    #Clicar em Confirmar
    click    xpath=//div[@id='root']/article/div/div/div[2]/div/div/div[4]/form/div[4]/button/span
    #APROVACAO DA DESCRICAO COMPLETA
    #Clicar na Etapa
    click    xpath=/html/body/div/article/div/div/div[2]/div/div/div[4]/form/div[1]/div
    sleep    3s
    #Selecionar Etapa
    click    id=react-select-step-option-3
    sleep    3s
    #Aprova ou Reprova
    click    xpath=//*[@id="root"]/article/div/div/div[2]/div/div/div[4]/form/div[2]/div/label[1]/span[1]/span[1]/input
    #Justificativa
    click    name=state.reason
    type    name=state.reason    ${STEP_THREE}
    #Clicar em Confirmar
    click    xpath=//div[@id='root']/article/div/div/div[2]/div/div/div[4]/form/div[4]/button/span
    #APROVACAO DA REUNIAO
    #Clicar na Etapa
    click    xpath=/html/body/div/article/div/div/div[2]/div/div/div[4]/form/div[1]/div
    sleep    3s
    #Selecionar Etapa
    click    id=react-select-step-option-4
    sleep    3s
    #Aprova ou Reprova
    click    xpath=//*[@id="root"]/article/div/div/div[2]/div/div/div[4]/form/div[2]/div/label[1]/span[1]/span[1]/input
    #Justificativa
    click    name=state.reason
    type    name=state.reason    ${STEP_FOUR}
    #Clicar em Confirmar
    click    xpath=//div[@id='root']/article/div/div/div[2]/div/div/div[4]/form/div[4]/button/span
    #VINCULACAO DE PROFESSOR
    #Clicar em Projetos no Menu Lateral
    click    xpath=/html/body/div/nav/ul/li[4]/a/span
    #Clicar na ABA Vincular Professor
    click    xpath=/html/body/div/article/div/div/div[1]/div/div/div/button[2]/span[1]
    #Clicar Lista de Projetos
    click    xpath=/html/body/div/article/div/div/div[3]/div/div/form/div[1]/div
    #Selecionar Projeto
    click    id=react-select-project-option-2
    #Clicar Lista de Professores
    click    xpath=/html/body/div/article/div/div/div[3]/div/div/form/div[2]/div
    #Selecionar Professor
    click    id=react-select-professor-option-4
    #Clicar em Confirmar
    click    xpath=/html/body/div/article/div/div/div[3]/div/div/form/div[4]/button/span[1]
    
Logar Professor e Vincular Aluno
    #Logar 
    click    xpath=//div[@id='root']/article/nav/div/a/button/span
    click    name=email
    type    name=email    ${NOMEPROFESSOR}@email.com
    click    name=password
    type    name=password    ${SENHA}
    click    xpath=//div[@id='root']/div/div/div[2]/div/div/h2
    click    xpath=//div[@id='root']/div/div/div[2]/div/div/section/form/div[3]/button/span
    sleep    3s
    #Clicar em Projetos no Menu Lateral
    click    xpath=/html/body/div/nav/ul/li[4]/a/span
    #Clicar na ABA Vincular Aluno
    click    xpath=/html/body/div/article/div/div/div[1]/div/div/div/button[3]/span[1]
    #Clicar na Lista de Projetos
    click    xpath=/html/body/div/article/div/div/div[4]/div/div/form/div[1]/div
    #Selecionar Projeto
    click    id=react-select-project-option-2
    #Clicar na Lista de Alunos
    click    xpath=/html/body/div/article/div/div/div[4]/div/div/form/div[2]/div
    #Selecionar Aluno(s)
    click    id=react-select-students-option-7
    #Clicar em Confirmar
    click    xpath=/html/body/div/article/div/div/div[4]/div/div/form/div[3]/button/span[1]
    
Logar Aluno e Entregar Projeto
    #Logar 
    click    xpath=//div[@id='root']/article/nav/div/a/button/span
    click    name=email
    type    name=email    ${NOMEALUNO}@email.com
    click    name=password
    type    name=password    ${SENHA}
    click    xpath=//div[@id='root']/div/div/div[2]/div/div/h2
    click    xpath=//div[@id='root']/div/div/div[2]/div/div/section/form/div[3]/button/span
    sleep    3s
    #Clicar em Projetos no Menu Lateral
    click    xpath=/html/body/div/nav/ul/li[4]/a/span
    #Clicar Lista de Projetos
    click    xpath=/html/body/div/article/div/div/div[2]/div/div/form/div[1]/div
    #Selecionar Projeto
    click    id=react-select-project-option-0
    #Descricao da Entrega
    click    name=delivery
    type    name=delivery    ${ENTREGA_PROJ}
    click    xpath=/html/body/div/article/div/div/div[1]/div/div/div/button/span[1]
    click    xpath=//div[@id='root']/article/div/div/div[2]/div/div/form/div[3]/button/span

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
