//
//  Coliseo.swift
//  Desafio iOS 01 - Coliseu - Marcussi
//
//  Created by Wanderley Marcussi on 02/05/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import Foundation




class Temporada {
    var nomeTemporada: String
    var quantidadeGladiadores: Int
    var listaGladiadorInscrito: [Gladiador]
    
    init(nomeTemporada: String, quantidadeGladiadores: Int,  listaGladiadorInscrito: [Gladiador]) {
        self.nomeTemporada = nomeTemporada
        self.quantidadeGladiadores = quantidadeGladiadores
        self.listaGladiadorInscrito = listaGladiadorInscrito
    }

    
    public func inscreverGladiador(nome: String, nivelVida: Float, nivelAtaque: Float, nivelDefesa: Float) {
        
        //let contador = self.listaGladiadorInscrito.count
        
            let gladiador: Gladiador = Gladiador(nome: nome, vida: nivelVida, ataque: nivelAtaque, defesa: nivelDefesa)
            
            self.listaGladiadorInscrito.append(gladiador)
            
            print("Competidor add com sucesso aqui")
        
    }
    
    

}
