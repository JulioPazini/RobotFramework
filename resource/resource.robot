*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${BROWSER}        chrome
${URL}            http://automationpractice.com/index.php

*** Keywords ***
### Setup e Teardown
Abrir navegador
    Open Browser  about:blank   ${BROWSER}

Fechar navegador
    Close Browser

### Passo a Passo
Acessar pagina home do site
    Go to         http://automationpractice.com/index.php
    Title should be  My Store

Digitar o produto '${PRODUTO}' no campo Pesquisar
    Input Text    id=search_query_top     ${PRODUTO}

Clicar no botao Pesquisar
    Click Element    name=submit_search

Conferir se o produto '${PRODUTO}' foi listado
    Wait Until Element Is Visible     css=#center_column > h1
    Title Should Be                   Search - My Store
    Page Should Contain Image         xpath=//*[@id="center_column"]//img[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
    Page Should Contain Link          xpath=//*[@id="center_column"]//a[@class="product-name"][contains(text(),"${PRODUTO}")]

Conferir mensagem de erro 'No results were found for your search '${PRODUTO}''
    Wait Until Element Is Visible     xpath=//*[@id="center_column"]/h1[@class="page-heading  product-listing"]
    Title Should Be                   Search - My Store
    Page Should Contain Element       xpath=//*[@id="center_column"]/p[@class="alert alert-warning"][contains(text(),"${PRODUTO}")]
    Page Should Contain Element       xpath=//*[@id="center_column"]//span[@class="heading-counter"]
