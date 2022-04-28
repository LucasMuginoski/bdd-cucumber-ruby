#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado quero acessar o sistema com meu email e senha
    para que possa ter acesso as playlists do parodify

    @sucesso
    Cenário: Login do usuário
        Dado que acesso pagina de login
        Quando submeto minhas credenciais com: "lucaslogin@gmail.com" e "pwd123"
        Então devo ser redirecionado para a area logada

    Esquema do Cenário: Tentativa de login
        Dado que acesso pagina de login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "<output>"

        Exemplos:
            | email                | senha  | output                             |
            | lucas@404.com.br     | pwd123 | Oops! Email e/ou senha incorretos. |
            | lucaslogin@gmail.com | 123456 | Oops! Email e/ou senha incorretos. |
