*** Settings ***
Documentation    Essa suite testa o site da Amazon.com.br
Resource         Amazon_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador 

    
*** TEST CASE ***
Caso de teste 01 - Acesso ao menu "Eletronicos"
    [Documentation]  esse teste verifica o menu eletronicos do site da Amazon.com.br
    ...              e verifica a categoria Computadores e Informática
    [Tags]           menus  categorias  
     Acessar a home page do site Amazon.com.br
     Entrar no menu "Eletrônicos"
     Verificar se aparece a frase "Eletrônicos e Tecnologia"
     Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
     Verificar se aparece a categoria "Computadores e Informática"

Caso de teste 02 - Pesquisa de um Produto
    [Documentation]  esse teste verifica a busca de um produto
    [Tags]           busca_produtos  lista_produtos
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"

Caso de teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    
Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    # Clicar no botão de pesquisa
    # Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    # Adicionar o produto "Console Xbox Series S" no carrinho
    # Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
 
# Caso de Teste 04 - Remover Produto do Carrinho
#     [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
#     [Tags]             remover_carrinho   
#     Acessar a home page do site Amazon.com.br
#     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#     Clicar no botão de pesquisa
#     Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
#     Adicionar o produto "Console Xbox Series S" no carrinho
#     Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
#     Remover o produto "Console Xbox Series S" do carrinho
#     Verificar se o carrinho fica vazio
