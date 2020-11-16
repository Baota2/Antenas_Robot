*** Settings ***
Library  SeleniumLibrary
Variables    Variables.py
Test Setup    Run Keywords  Open Browser  ${PROD_URL}  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}    AND    maximize browser window
#Test TearDown    Close Browser    

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
    type    name=title    Projeto de Teste 11
    #Descricao do Projeto
    click    name=quickDescription
    type    name=quickDescription    Projeto Criado para o teste E2E
    #Link do Projeto
    click    name=linkOne
    type    name=linkOne    testeprj.com.br
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
    click    id=react-select-2-option-3
    #Clicar na Lista de Projetos
    click    xpath=//div[@id='root']/article/div/div/div[2]/div/div/div[2]/div/div/div
    sleep    3s
    #Selecionar Projeto
    click    id=react-select-3-option-10
    sleep    3s
    #Clicar na Etapa
    click    xpath=/html/body/div/article/div/div/div[2]/div/div/div[4]/form/div[1]/div
    sleep    3s
    #Selecionar Etapa
    click    id=react-select-4-option-0
    sleep    3s
    #Aprova ou Reprova
    click    xpath=//*[@id="root"]/article/div/div/div[2]/div/div/div[4]/form/div[2]/div/label[1]/span[1]/span[1]/input
    #Justificativa
    click    name=state.reason
    type    name=state.reason    Aprovacao do Projeto
    #Clicar em Confirmar
    click    xpath=//div[@id='root']/article/div/div/div[2]/div/div/div[4]/form/div[4]/button/span 
    #APROVACAO DO PROJETO
    #Clicar na Etapa
    click    xpath=/html/body/div/article/div/div/div[2]/div/div/div[4]/form/div[1]/div
    sleep    3s
    #Selecionar Etapa
    click    id=react-select-4-option-1
    sleep    3s
    #Aprova ou Reprova
    click    xpath=//*[@id="root"]/article/div/div/div[2]/div/div/div[4]/form/div[2]/div/label[1]/span[1]/span[1]/input
    #Justificativa
    click    name=state.reason
    type    name=state.reason    Aprovacao do Projeto
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
    click    id=react-select-2-option-10
    #Preenchimento das Informacoes
    sleep    3s
    click    name=fullDescription
    type    name=fullDescription    Descricao Completa
    click    name=techDescription
    type    name=techDescription    Descricao Tecnologica
    click    name=linkTwo
    type    name=linkTwo    link2.com.br
    click    name=reunion.place
    type    name=reunion.place    FATEC SJC
    click    name=reunion.possibleDate
    click    name=reunion.possibleDate
    type    name=reunion.possibleDate    2020-11-25T15:00
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
    click    id=react-select-2-option-3
    #Clicar na Lista de Projetos
    click    xpath=//div[@id='root']/article/div/div/div[2]/div/div/div[2]/div/div/div
    sleep    3s
    #Selecionar Projeto
    click    id=react-select-3-option-10
    sleep    3s
    #Clicar na Etapa
    click    xpath=/html/body/div/article/div/div/div[2]/div/div/div[4]/form/div[1]/div
    sleep    3s
    #Selecionar Etapa
    click    id=react-select-4-option-2
    sleep    3s
    #Aprova ou Reprova
    click    xpath=//*[@id="root"]/article/div/div/div[2]/div/div/div[4]/form/div[2]/div/label[1]/span[1]/span[1]/input
    #Justificativa
    click    name=state.reason
    type    name=state.reason    Aprovacao da Descricao Completa
    #Clicar em Confirmar
    click    xpath=//div[@id='root']/article/div/div/div[2]/div/div/div[4]/form/div[4]/button/span
    #APROVACAO DA DESCRICAO COMPLETA
    #Clicar na Etapa
    click    xpath=/html/body/div/article/div/div/div[2]/div/div/div[4]/form/div[1]/div
    sleep    3s
    #Selecionar Etapa
    click    id=react-select-4-option-3
    sleep    3s
    #Aprova ou Reprova
    click    xpath=//*[@id="root"]/article/div/div/div[2]/div/div/div[4]/form/div[2]/div/label[1]/span[1]/span[1]/input
    #Justificativa
    click    name=state.reason
    type    name=state.reason    Aprovacao da Descricao Completa
    #Clicar em Confirmar
    click    xpath=//div[@id='root']/article/div/div/div[2]/div/div/div[4]/form/div[4]/button/span
    #APROVACAO DA REUNIAO
    #Clicar na Etapa
    click    xpath=/html/body/div/article/div/div/div[2]/div/div/div[4]/form/div[1]/div
    sleep    3s
    #Selecionar Etapa
    click    id=react-select-4-option-4
    sleep    3s
    #Aprova ou Reprova
    click    xpath=//*[@id="root"]/article/div/div/div[2]/div/div/div[4]/form/div[2]/div/label[1]/span[1]/span[1]/input
    #Justificativa
    click    name=state.reason
    type    name=state.reason    Aprovacao da Reuniao
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
    click    id=react-select-2-option-1
    #Clicar Lsita de Professores
    click    xpath=/html/body/div/article/div/div/div[3]/div/div/form/div[2]/div
    #Selecionar Projeto
    click    id=react-select-3-option-2
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
    click    id=react-select-2-option-1
    #Clicar na Lista de Alunos
    click    xpath=/html/body/div/article/div/div/div[4]/div/div/form/div[2]/div
    #Selecionar Aluno(s)
    click    id=react-select-3-option-4
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
    click    id=react-select-6-option-1
    #Descricao da Entrega
    click    name=delivery
    type    name=delivery    Entrega do Projeto de Teste 11
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
