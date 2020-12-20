#language: pt
@wip
Funcionalidade: CRUD de Processos

  Contexto:
    Dado que o usuário gostaria de salvar um novo Processos no Agapito Server
    E o usuário informar "vara" com o valor "Nova Mamoré"
    E o usuário informar "numero_processo" com o valor "8452147"
    E o usuário informar "natureza" com o valor "Civil"
    E o usuário informar "partes" com o valor "Pedro Alcolumbre Junior x José Aparecido"
    E o usuário informar "urgente" com o valor "S"
    E o usuário informar "arbitramento" com o valor "S"
    E o usuário informar "assistente_social" com o valor "Patrícia Mendonça"
    E o usuário informar "data_entrada" com o valor "01/12/2020"
    E o usuário informar "data_saida" com o valor "15/12/2020"
    E o usuário informar "data_agendamento" com o valor "10/06/2020"
    E o usuário informar "status" com o valor "Concluído"
    E o usuário informar "observacao" com o valor "Acordo entre as partes"

  Cenario: Criação de um novo Processo - POST
    Quando o usuário clicar no botão salvar na tela de New Processos
    Então o usuário deveria ver a mensagem "Processo foi criado com sucesso."

  @ignore
  Cenario: Mostrar um Processo já criado - GET
    Dado o usuário clicar no botão salvar na tela de New Processos
    Quando o usuário clicar em mostrar na tela de New Processos
    Então o usuário deveria ver a mensagem "sucesso"
    E o usuário vai ver o campo "vara" com o valor "Nova Mamoré"
    E o usuário vai ver o campo "numero_processo" com o valor "8452147"
    E o usuário vai ver o campo "natureza" com o valor "Civil"
    E o usuário vai ver o campo "partes" com o valor "Pedro Alcolumbre Junior x José Aparecido"
    E o usuário vai ver o campo "urgente" com o valor "S"
    E o usuário vai ver o campo "arbitramento" com o valor "S"
    E o usuário vai ver o campo "assistente_social" com o valor "Patrícia Mendonça"
    E o usuário vai ver o campo "data_entrada" com o valor "2020-12-01"
    E o usuário vai ver o campo "data_saida" com o valor "2020-12-15"
    E o usuário vai ver o campo "data_agendamento" com o valor "2020-06-10"
    E o usuário vai ver o campo "status" com o valor "Concluído"
    E o usuário vai ver o campo "observacao" com o valor "Acordo entre as partes"

  Cenario: Mostrar um Processo já criado - GET
    Dado o usuário clicar no botão salvar na tela de New Processos
    Quando o usuário clicar em mostrar na tela de New Processos
    Então o usuário deveria ver a mensagem "sucesso"
    E o usuário vai ver o campo "vara" com o valor "Nova Mamoré"
    E o usuário vai ver o campo "numero_processo" com o valor "8452147"
    E o usuário vai ver o campo "natureza" com o valor "Civil"
    E o usuário vai ver o campo "partes" com o valor "Pedro Alcolumbre Junior x José Aparecido"
    E o usuário vai ver o campo "urgente" com o valor "S"
    E o usuário vai ver o campo "arbitramento" com o valor "S"
    E o usuário vai ver o campo "assistente_social" com o valor "Patrícia Mendonça"
    E o usuário vai ver o campo "data_entrada" com o valor "2020-12-01"
    E o usuário vai ver o campo "data_saida" com o valor "2020-12-15"
    E o usuário vai ver o campo "data_agendamento" com o valor "2020-06-10"
    E o usuário vai ver o campo "status" com o valor "Concluído"
    E o usuário vai ver o campo "observacao" com o valor "Acordo entre as partes"

  Cenario: Editar um Processo já criado - PUT
    Dado o usuário clicar no botão salvar na tela de New Processos
    Quando alterar o campo "vara" para o valor "Piraporinha" na tela Editing Processo
    E o usuário clicar em editar na tela Editing Processo
    Então o usuário deveria ver a mensagem "sucesso"

    Quando o usuário clicar em mostrar na tela processos
    E o usuário vai ver o campo "vara" com o valor "Piraporinha"
    E o usuário vai ver o campo "numero_processo" com o valor "8452147"
    E o usuário vai ver o campo "natureza" com o valor "Civil"
    E o usuário vai ver o campo "partes" com o valor "Pedro Alcolumbre Junior x José Aparecido"
    E o usuário vai ver o campo "urgente" com o valor "S"
    E o usuário vai ver o campo "arbitramento" com o valor "S"
    E o usuário vai ver o campo "assistente_social" com o valor "Patrícia Mendonça"
    E o usuário vai ver o campo "data_entrada" com o valor "2020-12-01"
    E o usuário vai ver o campo "data_saida" com o valor "2020-12-15"
    E o usuário vai ver o campo "data_agendamento" com o valor "2020-06-10"
    E o usuário vai ver o campo "status" com o valor "Concluído"
    E o usuário vai ver o campo "observacao" com o valor "Acordo entre as partes"

  Cenario: Deletar um Usuário já criado - DELETE
    Dado o usuário clicar no botão salvar na tela de New Processos
    Quando o usuário clicar em Apagar na tela processos
    Então o usuário deveria ver a mensagem "sem conteúdo"

    Quando o usuário clicar em mostrar na tela processos
    Então o usuário deveria ver a mensagem "não encontrado"


  Esquema do Cenario: Validação do post com o esquema de cenário. Vara = <vara>
    Dado que o usuário gostaria de salvar um processo
    E o usuário informar "vara" com o valor "<vara>"
    E o usuário informar "numero_processo" com o valor "8452147"
    E o usuário informar "natureza" com o valor "Civil"
    E o usuário informar "partes" com o valor "Pedro Alcolumbre Junior x José Aparecido"
    E o usuário informar "urgente" com o valor "S"
    E o usuário informar "arbitramento" com o valor "S"
    E o usuário informar "assistente_social" com o valor "Patrícia Mendonça"
    E o usuário informar "data_entrada" com o valor "01/12/2020"
    E o usuário informar "data_saida" com o valor "15/12/2020"
    E o usuário informar "data_agendamento" com o valor "10/06/2020"
    E o usuário informar "status" com o valor "Concluído"
    E o usuário informar "observacao" com o valor "Acordo entre as partes"
    Quando o usuário clicar no botão salvar com esquema
    Então o usuário deveria ver a mensagem "<mensagem>"

    Exemplos:
      | vara           | mensagem                |
      | Piraporinha    | salvo com sucesso       |
      |                | entidade não processada |
      | Rio de Janeiro | salvo com sucesso       |
