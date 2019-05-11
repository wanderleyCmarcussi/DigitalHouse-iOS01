//
//  HistoricoVendas.swift
//  Desafio iOS 01 - Coliseu - Marcussi
//
//  Created by Wanderley Marcussi on 02/05/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import Foundation

class Historico {
    var historicoVendas: [VenderProduto] = []
    init(historicoVendas: [VenderProduto]) {
        self.historicoVendas = historicoVendas
    }
    
}
    public func registroDeVendas( vendedorv: String, produtov: String, datav: String) {
        
        let lista:VenderProduto = VenderProduto (nomeVendedor: vendedorv, nomeProduto: produtov, dataVenda: datav)
        
        self.historicoVendas.append(lista)
    



}
