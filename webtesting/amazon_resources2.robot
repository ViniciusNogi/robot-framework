*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                https://www.amazon.com.br/
${MENU_VENDAS}        //a[@href='/gp/browse.html?node=17877554011&ref_=nav_cs_sell'][contains(.,'Venda na Amazon')]
${XBOX}               //span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'Console Xbox Series S')]

*** Keywords ***
Abrir navegador
    Open Browser    browser=chrome    
    Maximize Browser Window

Fechar navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_VENDAS}

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    Wait Until Element Is Visible    locator=${XBOX}

Adicionar o produto "Console Xbox Series S" no carrinho
    