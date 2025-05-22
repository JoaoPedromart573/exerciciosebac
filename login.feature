            #language: pt

            Funcionalidade: Tela de login
            Como aluno do Portal da EBAC
            Quero me autenticar
            Para visualizar minhas notas

            Contexto:
            Dado quero eu acesse a página de autenticação do Portal EBAC

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas "Olá João"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "xxxx@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta: "Usuário inexistente"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "xxxx@ebac.com.br"
            E a senha "uytd@123"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário:Auntenticar multiplos usuário
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario            | senha       | mensagem    |
            | "joao@ebac.com.br" | "teste@123" | "Olá João!" |
            | "maria@ebac.com.br" | "teste@123" | "Olá Maria!" |
            | "josé@ebac.com.br" | "teste@123" | "Olá José!" |
