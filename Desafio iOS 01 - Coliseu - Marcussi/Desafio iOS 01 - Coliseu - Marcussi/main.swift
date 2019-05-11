//
//  main.swift
//  Desafio iOS 01 - Coliseu - Marcussi
//
//  Created by Wanderley Marcussi on 02/05/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import Foundation

// Carrega Gladiador

let gladiador1: Gladiador = Gladiador(nome: "Spartacus", vida: 20, ataque: 10, defesa: 90)
let gladiador2: Gladiador = Gladiador(nome: "Tetraites", vida: 50, ataque: 50, defesa: 50)
let gladiador3: Gladiador = Gladiador(nome: "Spiculus", vida: 100, ataque: 80, defesa: 20)

    print("Gladiadores:")
    print("Nome: \(gladiador1.nome) , Vida: \(gladiador1.vida), Ataque: \(gladiador1.ataque) , Defesa: \(gladiador1.defesa).")
    print("Nome: \(gladiador2.nome) , Vida: \(gladiador2.vida), Ataque: \(gladiador2.ataque) , Defesa: \(gladiador2.defesa).")
    print("Nome: \(gladiador3.nome) , Vida: \(gladiador3.vida), Ataque: \(gladiador3.ataque) , Defesa: \(gladiador3.defesa).")


// Carrega Treinador

let treinador1: Treinador = Treinador(nomeTreinador: "Lêntulo Batiato", percentagemAumento: 100, umGladiador: gladiador1 )
let treinador2: Treinador = Treinador(nomeTreinador: "Antonios ", percentagemAumento: 50, umGladiador: gladiador2)

    print("Treinadores:")
    print("Nome: \(treinador1.nomeTreinador) , Percentual: \(treinador1.percentagemAumento), Gladiador: \(treinador1.umGladiador.nome).")
    print("Nome: \(treinador2.nomeTreinador) , Percentual: \(treinador2.percentagemAumento), Gladiador: \(treinador2.umGladiador.nome).")

// Carrega Coliseu e insere Gladiadores e Treinadores

    var coliseu1: Coliseu = Coliseu(nomeColiseu: "ROMA II", listaGladiador: [], listaTreninador:[], listaHistoricoVendas: [])

    coliseu1.inscreverGladiador(nome: "Spartacus", nivelVida: 20, nivelAtaque: 10, nivelDefesa: 90)
    coliseu1.inscreverGladiador(nome: "Tetraites", nivelVida: 30, nivelAtaque: 30, nivelDefesa: 70)

    coliseu1.inscreverTreinador(nomeTreinador: treinador1.nomeTreinador, percentagemAumento: treinador1.percentagemAumento, umGladiador: gladiador1)
    coliseu1.inscreverTreinador(nomeTreinador: treinador2.nomeTreinador, percentagemAumento: treinador2.percentagemAumento, umGladiador: gladiador2)

        print("COLISEU:")
        print("Nome do Coliseu: \(coliseu1.nomeColiseu)")
        print("Lista de Gladiadores:")
            for i in 1 ... coliseu1.listaGladiador.count {
                print("                   Gladiador: \(coliseu1.listaGladiador[i-1].nome)")
            }
        print("Lista de Treinadores:")
            for i in 1 ... coliseu1.listaTreninador.count {
                print("                   Gladiador: \(coliseu1.listaTreninador[i-1].nomeTreinador), Gladiador que esta sendo treinado: \(coliseu1.listaTreninador[i-1].umGladiador.nome)")
            }

// CARREGA TEMPORADA
    coliseu1.comecarPretemporada(coliseu: coliseu1)


// EXCLUI GLADIADOR
    coliseu1.eliminarGladiador(nomeExcluir: gladiador1.nome)


// Carga dos Produtos
let produto1: Produto = Produto(nomeProduto: "Cachorro Quente", precoProduto: 10.50)
let produto2: Produto = Produto(nomeProduto: "Hamburguer", precoProduto: 8.50)
let produto3: Produto = Produto(nomeProduto: "Refrigerante", precoProduto: 5.50)
print("Produtos:")
print("Nome do Produto: \(produto1.nomeProduto) , Preço: R$ \(produto1.precoProduto).")
print("Nome do Produto: \(produto2.nomeProduto) , Preço: R$ \(produto2.precoProduto).")
print("Nome do Produto: \(produto3.nomeProduto) , Preço: R$ \(produto3.precoProduto).")



// Carrega os Vendedores
var vendedor1: Vendedor = Vendedor(nomeVendedor: "Joao da Silva", idVendedor: 001, listaProdutos: [], produtosVendidos: [] )
var vendedor2: Vendedor = Vendedor(nomeVendedor: "Maria das Dores", idVendedor: 002, listaProdutos: [], produtosVendidos: [])
var vendedor3: Vendedor = Vendedor(nomeVendedor: "Tenorio Cavalcante", idVendedor: 003, listaProdutos: [], produtosVendidos: [])
    print("Vendedores:")
    print("Nome do Vendedor: \(vendedor1.nomeVendedor), Codigo: \(vendedor1.idVendedor), Lista de Produtos: \(vendedor1.listaProdutos)")
    print("Nome do Vendedor: \(vendedor2.nomeVendedor), Codigo: \(vendedor2.idVendedor), Lista de Produtos: \(vendedor2.listaProdutos)")
    print("Nome do Vendedor: \(vendedor3.nomeVendedor), Codigo: \(vendedor3.idVendedor), Lista de Produtos: \(vendedor3.listaProdutos)")


    // carrega os produtos para os vendedores
    vendedor1.carregarProdutosLista(nomeProdutoLista: "Cachorro Quente", precoProdutoLista: 10.50)
    vendedor1.carregarProdutosLista(nomeProdutoLista: "Cachorro frio", precoProdutoLista: 9.99)
        print("Lista de produtos do vendedor:\( vendedor1.nomeVendedor)")
        for i in 1 ... vendedor1.listaProdutos.count {
            print("                   Produto: \(vendedor1.listaProdutos[i-1].nomeProduto), Preco: \(vendedor1.listaProdutos[i-1].precoProduto)")
        }



    // carrega os vendas de proutos para os vendedores

    vendedor1.carregaVendaLista (nomeProdutoLista: vendedor1.listaProdutos[0].nomeProduto, dataVendaLista:  "01/01/2019")
    vendedor1.carregaVendaLista (nomeProdutoLista: vendedor1.listaProdutos[1].nomeProduto, dataVendaLista:  "01/01/2019")
        print("Lista de vendas do vendedor:\( vendedor1.nomeVendedor)")
                for x in 1 ... vendedor1.produtosVendidos.count {
                    print("                   Vendas: \(vendedor1.produtosVendidos[x-1].nomeProduto), Data: \(vendedor1.produtosVendidos[x-1].dataVenda)")
                }
//


vendedor1.registroDeVendas(umVendedor: vendedor1)

// carrega os produtos para os vendedores



