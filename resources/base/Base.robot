*** Settings ***

Library    Selenium2Library

*** Variables ***

${URL}          https://parodify.herokuapp.com/users/sign_up



${input_email}    //input[@name='user[email]']
${email}        teste@gmail.com

${input_senha}    //input[@name='user[password]']
${senha}          123456


${input_confirmarSenha}        //input[@id='user_password_confirmation']
${confirmar_senha}             123456

${botao_cadastrar}            //input[@name='commit']


#Login

${pagina_login}               //a[@class='button is-pulled-right is-outlined is-white']

${login_input_email}          //input[@id='user_email']
${login_input_senha}          //input[@id='user_password']
${botao_login}                //input[@name='commit']


${Verifica_titulo}        //h2[@class='is-size-5']
${Titulo}        Tocadas Recentemente



#Pesquisar a musica favorita
${botao_pesquisar}          //i[@class='fa fa-search fa-lg']

#${categoria_musica}         //a[@target='#songs']

${campo_pesquisa}           //input[@id='search']

${realizar_pesquisa}        //input[@id='search']

${nome_musica}        Sprints de Luta Sprints de Gloria

${tipo_categoria}      //a[@href='/categories/1']

#${localizando_musica}          xpath=//*[@id="songs"]/div[1]/div[2]/div[1]/div[2]/h2[1]


*** Keywords ***
Dado que estou na pagina de Cadastro do parodify
    Open Browser    ${URL}    edge

E preencho o campo email com o dado "${email}"
    Input Text    ${input_email}    ${email}

E preencho o campo senha com o dado "${senha}"
    Input Text    ${input_senha}    ${senha}

E preencho o campo confirmar senha com o dado "${confirmar_senha}"
    Input Text    ${input_confirmarSenha}    ${confirmar_senha}

Quando clico no botão Cadastrar
    Click Element    ${botao_cadastrar}

Então sou cadastrado com sucesso!!
    ${titulo_paginaInicial}    Get Text    ${Verifica_titulo}
    Should Be Equal        ${Titulo}       ${titulo_paginaInicial}
    Sleep    3s
    
Agora vamos dar um descanso ao browser :D
    Close Browser


Dado que estou na pagina de Login do parodify
    Open Browser    ${URL}    edge

E clico no botao Login
    Click Element    ${pagina_login}
    Sleep    4s

E preencho o campo email com "${email}"
    Input Text    ${login_input_email}    ${email}

E preencho o campo senha com "${senha}"
    Sleep    2s
    Input Text    ${login_input_senha}    ${senha}

Quando clico no botao Login
    Click Element    ${botao_login}

Entao consigo entrar no sistema com sucesso!!!
    ${titulo_paginaInicial}    Get Text    ${Verifica_titulo}
    Should Be Equal        ${Titulo}       ${titulo_paginaInicial}
    


#escolha da musica favorita
Bom iremos pesquisar a nossa musica favorita no parodify
    Click Element    ${botao_pesquisar}
    Sleep  2s

Vamos escolher o tipo de musica
    Click Element    ${tipo_categoria}
    #



Vamos pesquisar pelo nome da musica "${nome_musica}"
    Input Text    ${campo_pesquisa}    ${nome_musica}
    Sleep    3s
    Click Element    ${realizar_pesquisa}
    Sleep    5s
   

Agora precisamos verificar se é a nossa musica favorita :D
    Sleep    3s
    #Click Element    ${categoria_musica}
    Sleep    5s
    #Should Contain Any       ${localizando_musica}
   