*** Settings ***
Documentation       Testando a pagina login


Library    Selenium2Library
Resource    ../base/Base.robot


*** Test Cases ***
Realizar o cadastro com sucesso!!
    Dado que estou na pagina de Cadastro do parodify
    E preencho o campo email com o dado "teste1@gmail.com"
    E preencho o campo senha com o dado "123456"
    E preencho o campo confirmar senha com o dado "123456"
    Quando clico no botão Cadastrar
    Então sou cadastrado com sucesso!!
    Agora vamos dar um descanso ao browser :D


Agora que realizamos o cadastro, vamos realizar o Login
    Dado que estou na pagina de Login do parodify
    E clico no botao Login
    E preencho o campo email com "teste1@gmail.com"
    E preencho o campo senha com "123456"
    Quando clico no botao Login
    Entao consigo entrar no sistema com sucesso!!!
    Agora vamos dar um descanso ao browser :D


Estando logado no Parodify, vamos escolher a nossa musica favorita
    Dado que estou na pagina de Login do parodify
    E clico no botao Login
    E preencho o campo email com "teste1@gmail.com"
    E preencho o campo senha com "123456"
    Quando clico no botao Login
    Entao consigo entrar no sistema com sucesso!!!
    Bom iremos pesquisar a nossa musica favorita no parodify
    Vamos escolher o tipo de musica
    Vamos pesquisar pelo nome da musica "Sprints de Luta Sprints de Gloria"
    Agora precisamos verificar se é a nossa musica favorita :D