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
    Go to          http://automationpractice.com/index.php
    Title should be  My Store
