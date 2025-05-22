            #language: pt

            Funcionalidade: Tela de Pagamento
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que o usuário está na tela de cadastro

            Cenário:Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu estiver na página de pagamento
            E for cadastrar meus dados
            Então deve ser marcado com "asteriscos"  os campos obrigatórios

            Cenário:Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
            Quando o usuario deixar campos vazios
            Então deve exibir uma mensagem "campos obrigatórios estão faltando"

            Cenário:Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando digitar "usuario@@.com"
            Então devera aparecer uma mensagem "e-mail iválido"

            Cenário:Deve permmitir campo e-mail valido. Sistema deve inserir uma mensagem de boas vindas
            Quando digitar "usuario@ebac.com"
            Então devera aparecer uma mensagem "Sucesso"

            Esquema do Cenário:Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem
            Quando digitar <usuario>
            Então deve exiibir <mensagem>

            Exemplos:
            | usuario            | mensagem       |
            | usuario@ebac.co    | e-mail iválido |
            | bruno8903@ebac.com | Sucesso        |
            | wesley23@@.com     | e-mail iválido |
            | fabricio@ebac.com  | Sucesso        |


