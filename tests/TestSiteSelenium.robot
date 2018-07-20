*** Settings ***

Resource          ../resource/resource.robot

Test SETUP       Abrir navegador
Test TEARDOWN    Fechar navegador

### SETUP ele roda uma keyword antes da suite ou de um teste
### TEARDOWN ele roda uma keyword depois de uma suite ou de um teste

*** Variables ***

*** Test Case ***

Caso de teste 01: Pesquisar produto existente
    Acessar pagina home do site
#     Digitar o produto 'Blouse' no campo Pesquisar
#     Clicar no botao Pesquisar
#     Conferir se o produto foi listado
#
# Caso de teste 02: Pesquisar produto nao existente
#     Acessar pagina home do site
#     Digitar o produto 'ItemNotFound' no campo Pesquisar
#     Clicar no botao Pesquisar
#     Conferir mensagem de erro 'No results were found for your search 'ItemNotFound''
#
*** Keywords ***
