            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login para autenticação na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado quero eu acesse a página de autenticação do EBAC-SHOP

            Cenário: Autenticação válida
            Quando digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas "Olá João"

            Cenário: Usuário inexistente
            Quando digitar o usuário "xxxx@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta: "Usuário inexistente"

            Cenário: Usuário com senha inválida
            Quando digitar o usuário "xxxx@ebac.com.br"
            E a senha "uytd@123"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário:Auntenticar multiplos usuário
            Quando digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario              | senha       | mensagem                   |
            | "joao@ebac.com.br"   | "teste@123" | Olá João!                  |
            | "maria@@ebac.com.br" | "teste@123" | Usuário inexistente        |
            | "7654@ebac.com.br"   | "xxxxx"     | Usuário ou senha inválidos |
            | "wesley@ebac.co"     | "teste@123" | Olá Wesley!                |
            | "josé@ebac.com.br"   | "teste@123" | Olá José!                  |

