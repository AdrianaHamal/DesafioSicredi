#language:pt
@Simulacoes
Funcionalidade: Simulacoes

  @SimulacaoSucesso
  Cenario: Cadastro simulacao com sucesso
  	Dado que tenho a um payload de simulacao valido
    Quando um post for realizado com o cpf '53417729033'
    Entao o sistema devolve o status 201
    E no campo "nome" retorna o valor "Fulano de Tal"
    E no campo "cpf" retorna o valor "53417729033"
    E no campo "email" retorna o valor "email@email.com"
    E no campo "valor" retorna o valor 1200
    E no campo "parcelas" retorna o valor 3
    E no campo "seguro" retorna o valor true
  
  @SimulacaoFalha 
  Cenario: Cadastro simulacao com falha status 400
  	Dado que tenho a um payload de simulacao invalido
    Quando um post for realizado com o cpf '53417729033'
    Entao o sistema devolve o status 400
    E no campo "erros.email" retorna o valor "E-mail não deve ser vazio"
    
   @SimulacaoFalhaDuplicado 
  Cenario: Cadastro simulacao com falha status 409
  	Dado que tenho a um payload de simulacao valido
    Quando um post for realizado com o cpf '97093236014'
    Entao o sistema devolve o status 409
    E no campo "mensagem" retorna o valor "CPF duplicado"
     
  @SimulacaoPutSucesso
  Cenario: Alteracao simulacao com sucesso
  	Dado que tenho a um payload de simulacao valido
  	Quando o campo "nome" for alterado para "Fulano"
    Quando um put for realizado com o cpf '53417729033'
    Entao o sistema devolve o status 200
    E no campo "nome" retorna o valor "Fulano"
    E no campo "cpf" retorna o valor "53417729033"
    E no campo "email" retorna o valor "email@email.com"
    E no campo "parcelas" retorna o valor 3
    E no campo "seguro" retorna o valor true  

  @SimulacaoPutFalha
  Cenario: Alteracao simulacao com falha
  	Dado que tenho a um payload de simulacao valido
  	Quando um put for realizado com o cpf '63230645022'
    Entao o sistema devolve o status 404
		E no campo "mensagem" retorna o valor " CPF 63230645022 não encontrado"
 
 @SimulacaoGetLista
  Cenario: get simulacao lista
  	Quando um get de simulacao for realizado
  	Entao o sistema devolve o status 200
		E no campo "nome[0]" retorna o valor "Fulano"
 
 @SimulacaoGetLista
  Cenario: get simulacao lista
  	Quando um get de simulacao for realizado
  	Entao o sistema devolve o status 200
		E no campo "nome[0]" retorna o valor "Fulano"
	
	@SimulacaoGetSucesso
  Cenario: get simulacao cpf
  	Quando um get de simulacao for realizado com o cpf "53417729033"
  	Entao o sistema devolve o status 200
		E no campo "nome" retorna o valor "Fulano"
    E no campo "cpf" retorna o valor "53417729033"
    E no campo "email" retorna o valor "email@email.com"
    E no campo "parcelas" retorna o valor 3
    E no campo "seguro" retorna o valor true  
 
 @SimulacaoGetFalha
  Cenario: get simulacao cpf nao encontrado
  	Quando um get de simulacao for realizado com o cpf "53417729555"
  	Entao o sistema devolve o status 404

  @SimulacaoDeleteSucesso
  Cenario: delete simulacao sucesso
  	Quando um delete de simulacao for realizado com o id 13
  	Entao o sistema devolve o status 200
  	
  	@SimulacaoDeleteFalha
  Cenario: delete simulacao sucesso
  	Quando um delete de simulacao for realizado com o id 9999
  	Entao o sistema devolve o status 404
 
 