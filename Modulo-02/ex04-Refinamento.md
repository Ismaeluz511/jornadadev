## Exercício 4 — Refinamento sucessivo
## Aplique a técnica do refinamento sucessivo (visão geral → detalhamento) para o problema:

## “Um sistema de caixa de supermercado deve registrar os itens de uma compra, calcular o
## subtotal, aplicar desconto se o cliente tiver cartão fidelidade (5%) e mostrar o total a
## pagar.”

## Entregue dois níveis: o Nível 01 (visão geral, 3–4 passos) e o Nível 02 (cada passo detalhado).

## Nível 01
1-Registrar itens
2-Calcular subtotal
3-Aplicar desconto se cartão fidelidade
4-Mostrar total

## Nível 02
Calcular subtotal:
    subtotal ← soma dos valores de todos os produtos
Aplicar desconto se possuir o cartão fidelidade:
    Se possui o cartão fidelidade
        desconto ← subtotal * 0.05
    Senão
         desconto ← 0
Mostrar total:
    total ← subtotal - desconto
    Escrever total
