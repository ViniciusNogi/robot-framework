*** Settings ***
Documentation    Essa suite verifica o site da Amazon.com.br
Resource         amazon_resources2.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador

*** Test Case ***
Caso de teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    Adicionar o produto "Console Xbox Series S" no carrinho
    # Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    