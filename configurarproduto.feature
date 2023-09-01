            #language: pt

            Funcionalidade: Configuração produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho
            
            Contexto:
            Dado que é obrigatório selecionar cor, tamanho e quantidade do item

            Cenário: Válido
            Quando eu selecionar <cor>, <tamanho>, <quantidade>
            E clicar em comprar
            Então o item será adicionado ao carrinho de compras

            Cenário: Esqueceu de selecionar o tamanho
            Quando eu selecionar <cor>, <quantidade>
            E clicar em comprar
            Então deve exibir a mensagem de erro "Por favor, selecione o tamanho"

            Contexto:
            Dado que deve ser permitido apenas 10 produtos por venda

            Cenário: Válido 2
            Quando eu selecionar <cor>, <tamanho>, <quantidademenorque10>
            E clicar em comprar
            Então os itens serão adicionados ao carrinho de compras

            Cenário: Excedeu limite de produtos
            Quando eu selecionar <cor>, <tamanho>, <quantidademaiorque10>
            E clicar em comprar
            Então deve exibir a mensagem de erro "Seu limite de compras é de 10 produtos da loja"

            Contexto: 
            Dado que quando eu clicar no botão limpar deve voltar ao estado original

            Cenário: Válido 3
            Quando eu clico <botaolimpar>
            Então deve voltar ao estado original

            Cenário: Erro 3
            Quando eu clico <botaolimpar>
            Então deve ir para página de login

            Esquema do Cenário: Autenticar múltiplas opções
            Quando eu selecionar <modelo>, <cor>, <tamanho>, <quantidade>
            Então deve exibir a <mensagem>

            Exemplos:
            | modelo    | cor       | tamanho | quantidade | mensagem                                         |
            | "blusa"   | "rosa"    | "P"     | 1          | "Ótima escolha"                                  |
            | "calça"   | ""        | "M"     | 2          | "Por favor, selecione a cor"                     |
            | "jaqueta" | "amarela" | "G"     | 13         | "Seu limite de compras é de 10 produtos da loja" |

