***Settings***
Library     SeleniumLibrary


***Variables***
${variable1}    test1
${variable2}    test2
${variable3}    test3


***Keywords***
abrir site do google
    Open Browser        https://www.google.com.br/      chrome

abrir site da globo
    Open Browser        https://globo.com       chrome

fechar navegador
    Close Browser


***Test Cases***
Scenario 1: Open Google's website
    abrir site do google
    fechar navegador

Scenario 2: Open Globo's website
    abrir site da globo
    fechar navegador
