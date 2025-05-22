            #language: pt

            Funcionalidade: Página do Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Para depois inserir no carrinho

            Contexto:
            Dado que o cliente está na página do produto

            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando o usuario entrar na página de compras
            Então deve exibir seleções de cor,tamanho e quantidade

            Cenário: Deve permitir apenas 10 produtos por venda
            Quando o usuario entrar na forma de pagamento
            E tiver 20 produtos
            Então deve exibir a seguinte mensagem "Quantidade maxima excedida"

            Cenário:Deve permitir apenas 10 produtos por venda
            Quando o usuario entrar na forma de pagamento
            E tiver 9 produtos
            Então deve exibir a seguinte mensagem "Produto inserido no carrinho"

            Esquema do Cenário:Deve permitir apenas 10 produtos por venda
            Quando o usuario selecionar o <produto> e <quantidade>
            Então deve exbir a <mensagem>

            Exemplos:
            | produto  | quantidade | mensagem                     |
            | camiseta | 12         | Quantidade maxima excedida   |
            | camiseta | 9          | Produto inserido no carrinho |
            | camiseta | 20         | Quantidade maxima excedida   |
            | camiseta | 5          | Produto inserido no carrinho |
            
            Cenário:Quando eu clicar no botão “limpar” deve voltar ao estado original
            Quando o usuario não querer mais compra algum produto
            E a clicar em "limpar"
            Então deve exibir a seguinte mensagem "esse produto foi excluido"




