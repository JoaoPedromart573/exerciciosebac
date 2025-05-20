            #language: pt

            Funcionalidade: Página do Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Para depois inserir no carrinho

            Contexto:
            Dado quero aplicar as característica do produto

            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu entrar na página de compra
            Então deve exibir seleções de cor,tamanho e quantidade

            Cenário: Deve permitir apenas 10 produtos por venda
            Quando eu entrar na forma de pagamento
            E tiver 20 produtos
            Então deve exibir a seguinte mensagem "Não pode efetuar por que você cedeu o seu limite de produtos"

            Exemplos:
            | produto  | quantidade | mensagem                                                     |
            | camiseta | 12         | Não pode efetuar por que você cedeu o seu limite de produtos |
            | camiseta | 20         | Não pode efetuar por que você cedeu o seu limite de produtos |
            | camiseta | 11         | Não pode efetuar por que você cedeu o seu limite de produtos |
            
            Cenário:Quando eu clicar no botão “limpar” deve voltar ao estado original
            Quando eu não querer mais compra algum produto
            E a clicar em "limpar"
            Então deve exibir a seguinte mensagem "esse produto foi excluido"




