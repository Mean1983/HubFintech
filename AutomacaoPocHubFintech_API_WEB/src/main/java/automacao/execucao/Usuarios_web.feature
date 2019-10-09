#language: pt
#encoding: UTF-8
Funcionalidade: Validar Funcionalidade da cadastro de Usuario web

  @testeWeb
  Cenario: verificar no cadastro email ja em uso
    Dado tenho uma rota valida para o cadastro de usuario
    E preencho os dados do novo usuario
    Quando crio o usuario
    Entao e apresentado de usuario cadastrado
    E valido a mensagem de "Usuário Criado com sucesso"
    E finalizo o teste
