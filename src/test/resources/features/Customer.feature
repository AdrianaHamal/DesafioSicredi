#language:pt
@Customer
Funcionalidade: Customer

  Cenario: Cadastro customer
    Dado que esteja na pagina "https://www.grocerycrud.com/demo/bootstrap_theme_v4/"
    Quando modifico a versao do bootstrap para "Bootstrap V4 Theme"
    E adiciono um customer
    E preencho os campos com
      | name        | Teste Sicredi         |
      | lastName    | Teste                 |
      | contact     | Adriana Hamal         |
      | phone       | 51 9999-9999          |
      | address1    | Rua Mauro 462 |
      | address2    | Bloco A              |
      | city        | São Paulo          |
      | state       | SP                    |
      | postalCode  | 91000-000             |
      | country     | Brasil                |
      | employeer   | Fixter                |
      | creditLimit |                   200 |
    Entao clico no botao salvar e valido que a mensagem "Your data has been successfully stored into the database. Edit Customer or Go back to list" foi exibida
