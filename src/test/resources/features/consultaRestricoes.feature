#language:pt
@Restricoes
Funcionalidade: Restricoes

  @semRestricoes
  Cenario: Sem Restricoes
    Quando um get for realizado com o cpf '52533876097'
    Entao o sistema devolve o status 204

  @comRestricoes
  Esquema do Cenario: Com Restricoes com cpf <cpf>
    Quando um get for realizado com o cpf '<cpf>'
    Entao o sistema devolve o status 200
    E no campo "mensagem" retorna o valor "O CPF <cpf> tem problema"

    Exemplos: 
      | cpf         |
      | 97093236014 |
      | 60094146012 |
      | 84809766080 |
      | 62648716050 |
      | 26276298085 |
      | 01317496094 |
      | 55856777050 |
      | 19626829001 |
      | 24094592008 |
      | 58063164083 |

  
