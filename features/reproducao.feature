#language: pt

Funcionalidade: Reproduzir perodias
    Sendo usuário cadastrado quero reproduzir musicas no player.

    Contexto: Login
        * Login com "lucaslogin@gmail.com" e "pwd123"

    Cenário: Ouvir música
        Dado que quero ouvir "Rock"
        Quando toca a musica:
            | musica | Sprints de Luta Sprints de Gloria |
            | banda  | Charlie Brown Bug                 |
        Então essa parodia deve ficar em modo de reprodução

