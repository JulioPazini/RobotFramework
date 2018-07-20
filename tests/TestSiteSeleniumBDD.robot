*** Settings ***

Library       Selenium

*** Variables ***

$(URL)        http://automationpractice.com/index.php
$(BROWSER)    chrome

*** Test Case ***

Cenario 01: Pesquisar produto existente
     Dado que estou na pagina home do site
     Quando eu perquisar pelo produto 'Blouse'
     Entao o produto 'Blouse' deve ser listado na pagina de resultado da busca


Cenario 02: Pesquisar produto nao existente
     Dado que estou na pagina home do site
     Quando eu pesquisar pelo produto 'ItemNotFound'
     Entao a pagina deve exibir a mensagem 'No results were found for your search 'ItemNotFound''

*** Keywords ***
