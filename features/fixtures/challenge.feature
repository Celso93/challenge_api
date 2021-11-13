#language: pt
@contrato
Funcionalidade: Validar o retorno da API 
  Validar o retorno e de contrato do response da API

  Esquema do Cenario: Validando os contratos e status
    Quando solicitado o metodo GET no recurso "<endpoint>"
    E valido o contrato "<schema>"
    Entao a API deve me retornar o status '200'

  @example
  Exemplos:
    | endpoint  | schema   |
    | /Make     | make     |
    | /Model    | model    |
    | /Version  | version  |
    | /Vehicles | vehicles |
    