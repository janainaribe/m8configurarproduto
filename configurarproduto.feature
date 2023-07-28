            #language: pt

            Funcionalidade: Configuração produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Válido
            Dado que é obrigatório selecionar cor, tamanho e quantidade do item
            Quando eu selecionar 1 blusa rosa tamanho P
            E clicar em comprar
            Então o item será adicionado ao carrinho de compras

            Cenário: Esqueceu de selecionar o tamanho
            Dado que é obrigatório selecionar cor, tamanho e quantidade do item
            Quando eu selecionar 2 blusas amarelas
            E clicar em comprar
            Então deve exibir a mensagem de erro "Por favor, selecione o tamanho"

            Cenário: Válido 2
            Dado que deve ser permitido apenas 10 produtos por venda
            Quando eu selecionar 10 calças azuis tamanho M
            E clicar em comprar
            Então os itens serão adicionados ao carrinho de compras

            Cenário: Excedeu limite de produtos
            Dado que deve ser permitido apenas 10 produtos por venda
            Quando eu selecionar 13 calças verdes tamanho P
            E clicar em comprar
            Então deve exibir a mensagem de erro "Seu limite de compras é de 10 produtos da loja"

            Cenário: Válido 3
            Dado que quando eu clicar no botão limpar deve voltar ao estado original
            Quando eu clico no botão limpar
            Então deve voltar ao estado original

            Cenário: Erro 3
            Dado que quando eu clicar no botão limpar deve voltar ao estado original
            Quando eu clico no botão limpar
            Então deve ir para página de login

            Esquema do Cenário: Autenticar múltiplas opções
            Quando eu selecionar <modelo>
            E a <cor>
            E o <tamanho>
            E a <quantidade>
            Então deve exibir a <mensagem>

            Exemplos:
            | modelo    | cor       | tamanho | quantidade | mensagem                                         |
            | "blusa"   | "rosa"    | "P"     | 1          | "Ótima escolha"                                  |
            | "calça"   | ""        | "M"     | 2          | "Por favor, selecione a cor"                     |
            | "jaqueta" | "amarela" | "G"     | 13         | "Seu limite de compras é de 10 produtos da loja" |



