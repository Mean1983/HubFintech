#language: pt
#encoding: UTF-8
Funcionalidade: Validar Funcionalidade da API cadastro de pessoas

  @cadastrarPessoa_2
  Cenario: verificar o cadastro de uma pessoa com sucesso
    Dado que tenho um url de cadastro valida
    E preencho os headers
    E tenho dados validos para o cadastro de uma pessoa
    Quando realizo uma chamada POST
    Entao e apresentado o caminho da chamada
    E e apresentado o retorno da chamada
    E o status e igual a 201

  @emailNaoValido
  Cenario: verificar email não valido ao tentar cadastrar
    Dado que tenho um url de cadastro valida
    E preencho os headers
    E tenho dados validos para email nao valido
    Quando realizo uma chamada POST
    Entao e apresentado o caminho da chamada
    E e apresentado o retorno da chamada
    E o status e igual a 422
    E valido se o campo "errors.email[0]" da resposta e igual "não é válido"

  @emailEmBranco
  Cenario: verificar email não valido ao tentar cadastrar
    Dado que tenho um url de cadastro valida
    E preencho os headers
    E tenho dados validos para email em branco
    Quando realizo uma chamada POST
    Entao e apresentado o caminho da chamada
    E e apresentado o retorno da chamada
    E o status e igual a 422
    E valido se o campo "errors.email[0]" da resposta e igual "não pode ficar em branco"

  @usuarioJaUso
  Cenario: verificar email não valido ao tentar cadastrar
    Dado que tenho um url de cadastro valida
    E preencho os headers
    E tenho dados validos para usuario ja em uso
    Quando realizo uma chamada POST
    Entao e apresentado o caminho da chamada
    E e apresentado o retorno da chamada
    E o status e igual a 422
    E valido se o campo "errors.email[0]" da resposta e igual "já está em uso"

  @usuarioNomeBranco
  Cenario: verificar email não valido ao tentar cadastrar
    Dado que tenho um url de cadastro valida
    E preencho os headers
    E tenho dados validos para usuario com nome em branco
    Quando realizo uma chamada POST
    Entao e apresentado o caminho da chamada
    E e apresentado o retorno da chamada
    E o status e igual a 422
    E valido se o campo "errors.name[0]" da resposta e igual "não pode ficar em branco"
    
    @phoneNaoENumero
    Cenario: verificar email não valido ao tentar cadastrar
    Dado que tenho um url de cadastro valida
    E preencho os headers
    E tenho dados validos para phone nao numerico
    Quando realizo uma chamada POST
    Entao e apresentado o caminho da chamada
    E e apresentado o retorno da chamada
    E o status e igual a 422
    E valido se o campo "errors.phone[1]" da resposta e igual "não é um número"
    
    
