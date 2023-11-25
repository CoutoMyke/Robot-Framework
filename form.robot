***Settings***
Library     SeleniumLibrary

***Variables***
${input_email}              id:identifierId
${button_avancar}           xpath://*[@id="identifierNext"]/div/button/span

***Keywords***
abrir navegador e acessar o site
    Open Browser        https://mail.google.com/    chrome

preencher email
    Input Text          ${input_email}      coutomyke@gmail.com
    Sleep               5s

clicar em submit
    Click Element       ${button_avancar}

fechar navegador
    Close Browser

***Test Cases***
Scenario 1: Complete forms
    abrir navegador e acessar o site
    preencher email
    clicar em submit
    fechar navegador
