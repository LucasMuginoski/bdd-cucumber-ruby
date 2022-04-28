# language: pt

Funcionalidade: Cadastro de usuários
    Sendo um visitante, quero fazer meu cadastro para que possa ouvir músicas

    @happy
    Cenário: Cadastro de novo usuário
        Dado que acesso a pagina de cadastro
        Quando submeto meu cadastro com:
            | email          | lucasemailtest@gmail.com |
            | senha          | Pwd123!                  |
            | senha_confirma | Pwd123!                  |
        Então devo ser redirecionado para a area logada


    # Para cenários parecidos mas com mesmo comportamento podemos usar da seguinte forma
    Esquema do Cenário: Tentativas de cadastro
        Dado que acesso a pagina de cadastro
        Quando submeto meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <senha_confirma> |
        Então devo ver a mensagem: "<output>"
        # Matriz de exemplo: com dados dos testes (linha 1 é o placeholder demais são os dados dos testes)

        Exemplos:
            | email               | senha  | senha_confirma |output                              |
            |                     | pwd123 | pwd123         |Oops! Informe seu email.            |
            | emailtest@gmail.com |        | pwd123         |Oops! Informe sua senha.            |
            | emailtest@gmail.com | abc123 | pwd123         |Oops! Senhas não são iguais.        |
            |                     |        |                |Oops! Informe seu email e sua senha.|

    @temp
    Cenário: Validação do Campo Email
        Quando Dado que acesso a pagina de cadastro
        Entao deve exibir o seguinte css: "input[type=email]"
