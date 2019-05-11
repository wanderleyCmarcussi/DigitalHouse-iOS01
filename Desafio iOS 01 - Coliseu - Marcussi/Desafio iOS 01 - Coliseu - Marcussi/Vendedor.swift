//
//  VendedorAmbulante.swift
//  Desafio iOS 01 - Coliseu - Marcussi
//
//  Created by Wanderley Marcussi on 02/05/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import Foundation

class Vendedor {
    var nomeVendedor: String
    var idVendedor: Int
    var listaProdutos: [Produto]
    var produtosVendidos: [VenderProduto]
    
    init(nomeVendedor: String, idVendedor: Int, listaProdutos: [Produto], produtosVendidos: [VenderProduto]) {
        self.nomeVendedor = nomeVendedor
        self.idVendedor = idVendedor
        self.listaProdutos = listaProdutos
        self.produtosVendidos = produtosVendidos
    }
 
    public func carregarProdutosLista(nomeProdutoLista: String, precoProdutoLista: Float) {
        
        let produtosLista: Produto = Produto(nomeProduto: nomeProdutoLista, precoProduto: precoProdutoLista)
        
        self.listaProdutos.append(produtosLista)
        
        print("Produto adicionado na Lista do Vendedor")
        
    }
    
    
    public func carregaVendaLista(nomeProdutoLista: String, dataVendaLista: String) {
        
        let VendaLista: VenderProduto = VenderProduto(nomeProduto: nomeProdutoLista, dataVenda: dataVendaLista)
            

        self.produtosVendidos.append(VendaLista)
        
        print("Venda adicionado no Vendedor")
        
    }

    
    //     *************  REGISTRAR O HISTORICO E ELIMINAR AS VENDAS  ************* //
    
//    public func registroDeVendas(vendedor : Vendedor) -> Void {
//
//
//        print("ELIMINA VENDAS DO DIA")
//
//        for x1 in 1 ... self.produtosVendidos.count{
//                self.produtosVendidos.remove (at: x1-1)
//                print("Venda removida com sucesso")
//                return
//
//            }
//        }
    
    public func registroDeVendas(umVendedor: Vendedor) -> Void {
        

        print("Carrega Historico de Vendas")
        print(self.produtosVendidos.count)
        for x1 in 0 ... self.produtosVendidos.count - 1  {
            
            coliseu1.carregaHistoricoVendas(nomeProdutoLista: umVendedor.produtosVendidos[x1].nomeProduto, dataVendaLista: umVendedor.produtosVendidos[x1].dataVenda)
        }
        
        print("ELIMINA VENDAS DO DIA")
        
        for x2 in 1 ... self.produtosVendidos.count  {
            self.produtosVendidos.remove (at: x2 - 1 )
           print("Venda do dia removidas com sucesso")
           return
        }

    }
}


