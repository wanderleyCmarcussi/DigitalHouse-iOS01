//
//  Treinadores.swift
//  Desafio iOS 01 - Coliseu - Marcussi
//
//  Created by Wanderley Marcussi on 02/05/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import Foundation

class Treinador  {
    var nomeTreinador: String
    var percentagemAumento: Float
    var umGladiador: Gladiador
    
    init(nomeTreinador: String, percentagemAumento: Float, umGladiador: Gladiador) {
        self.nomeTreinador = nomeTreinador
        self.percentagemAumento = percentagemAumento
        self.umGladiador = umGladiador
    }
}
