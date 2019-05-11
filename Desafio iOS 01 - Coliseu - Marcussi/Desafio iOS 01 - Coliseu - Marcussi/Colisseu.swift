//
//  Colisseu.swift
//  Desafio iOS 01 - Coliseu - Marcussi
//
//  Created by Wanderley Marcussi on 06/05/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import Foundation

class Coliseu {
    var nomeColiseu: String
    var listaGladiador: [Gladiador]
    var listaTreninador:[Treinador]
    var listaHistoricoVendas: [VenderProduto]
    
    init(nomeColiseu: String, listaGladiador: [Gladiador], listaTreninador:[Treinador], listaHistoricoVendas: [VenderProduto]) {
        self.nomeColiseu = nomeColiseu
        self.listaGladiador = listaGladiador
        self.listaTreninador = listaTreninador
        self.listaHistoricoVendas = listaHistoricoVendas
    }
    
  
    
    public func inscreverGladiador(nome: String, nivelVida: Float, nivelAtaque: Float, nivelDefesa: Float) {
        
        let gladiador: Gladiador = Gladiador(nome: nome, vida: nivelVida, ataque: nivelAtaque, defesa: nivelDefesa)
        
        self.listaGladiador.append(gladiador)
        
        print("Competidor add com sucesso aqui")
        
        
    }

    public func inscreverTreinador(nomeTreinador: String, percentagemAumento: Float, umGladiador: Gladiador) {
        
        let treinador: Treinador = Treinador(nomeTreinador: nomeTreinador, percentagemAumento: percentagemAumento, umGladiador: umGladiador)
        
        self.listaTreninador.append(treinador)
        
        print("Treinador add com sucesso aqui")
        
        
    }
    
    //     *************  CALCULAR O PERCENTUAL DE AUMENTO DO TREINADOR NO COLISEU ************* //
    
    func comecarPretemporada(coliseu: Coliseu)  {
        
        for i in 1 ... coliseu.listaTreninador.count {
            print("                   Treinador: \(coliseu.listaTreninador[i-1].nomeTreinador), Gladiador \(coliseu.listaTreninador[i-1].umGladiador.nome)")
        
            for i2 in 1 ... coliseu.listaGladiador.count{
            
                if coliseu.listaGladiador[i2-1].nome ==  coliseu.listaTreninador[i-1].umGladiador.nome {
                
                    coliseu.listaGladiador[i2-1].ataque = coliseu.listaGladiador[i2-1].ataque + coliseu.listaTreninador[i-1].percentagemAumento
                    coliseu.listaGladiador[i2-1].defesa = coliseu.listaGladiador[i2-1].defesa + coliseu.listaTreninador[i-1].percentagemAumento
                    print("Ataque: \(coliseu.listaGladiador[i2-1].ataque), Defesa: \(coliseu.listaGladiador[i2-1].defesa) ")

//                } else {
//                    print("Nao encontrei")
                }
            
            }
        }
        
    }

    
    //     *************  EXCLUIR UM GLADIADOR DO COLISEU ************* //
    
    public func eliminarGladiador(nomeExcluir: String) {
        print("ELIMINA")
        for i3 in 1 ... self.listaGladiador.count{
            print(self.listaGladiador[i3-1].nome)
            if self.listaGladiador[i3-1].nome ==  nomeExcluir {
                self.listaGladiador.remove (at: i3-1)
                print("Gladiador eliminado com sucesso")
                return

            }
        }
        
    }

    //   Carrega a lista de Historico de Vendas
    

        public func carregaHistoricoVendas(nomeProdutoLista: String, dataVendaLista: String) {
            
            let historicoVendas: VenderProduto = VenderProduto(nomeProduto: nomeProdutoLista, dataVenda: dataVendaLista)
            
            
            self.listaHistoricoVendas.append(historicoVendas)
            
            print("Lista de Historico de Vendas:\( nomeProdutoLista)")
    }
    
    
    
}
