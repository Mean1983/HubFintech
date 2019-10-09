#language: pt
#encoding: UTF-8
Funcionalidade: Validar Funcionalidade da API cadastro de pessoas

  @cadastrarPessoa
  Cenario: verificar o cadastro de uma pessoa com sucesso
    Dado que tenho um url de cadastro valida
    E preencho os headers
    E tenho dados validos para o cadastro de uma pessoa
    Quando realizo uma chamada POST
    Entao e apresentado o caminho da chamada
    E e apresentado o retorno da chamada
    E o status e igual a 201

  @pessoaJaCadastradaCPF
  Cenario: verificar que não é possivel realizar o cadastro de uma pessoa com um cpf ja cadastrado
    Dado que tenho um url de cadastro valida
    E preencho os headers
    E tenho dados validos de uma pessoa ja cadastrada com o mesmo CPF
    Quando realizo uma chamada POST
    Entao e apresentado o caminho da chamada
    E e apresentado o retorno da chamada
    E o status e igual a 400
    E valido se o campo "erro" da resposta e igual "Já existe pessoa cadastrada com o CPF 94323484512"

  @pessoaJaCadastradaTelefone
  Cenario: verificar que não é possivel realizar o cadastro de uma pessoa com um telefone ja cadastrado
    Dado que tenho um url de cadastro valida
    E preencho os headers
    E tenho dados validos de uma pessoa ja cadastrada com o mesmo telefone
    Quando realizo uma chamada POST
    Entao e apresentado o caminho da chamada
    E e apresentado o retorno da chamada
    E o status e igual a 400
    E valido se o campo "erro" da resposta e igual "Já existe pessoa cadastrada com o Telefone (11)23431034"

  @pessoaBuscarTelefone
  Esquema do Cenario: verificar a consulta de uma pessoa pelo telefone
    Dado que tenho uma url de consulta por telefone valida
    E preencho os headers
    E utilizo o ddd "<DDD>"
    E utilizo o numero "<NUMERO>"
    Quando realizo uma chamada GET
    Entao e apresentado o caminho da chamada
    E e apresentado o retorno da chamada
    E o status e igual a 200

    Exemplos: 
      | DDD | NUMERO   |
      |  11 | 23431034 |

  @pessoaBuscarTelefoneInexistente
  Esquema do Cenario: verificar a consulta de uma pessoa inexistente pelo telefone
    Dado que tenho uma url de consulta por telefone valida
    E preencho os headers
    E utilizo o ddd "<DDD>"
    E utilizo o numero "<NUMERO>"
    Quando realizo uma chamada GET
    Entao e apresentado o caminho da chamada
    E e apresentado o retorno da chamada
    E o status e igual a 404
    E valido se o campo "erro" da resposta e igual "Não existe pessoa com o telefone (11)23439999"

    Exemplos: 
      | DDD | NUMERO   |
      |  11 | 23439999 |
