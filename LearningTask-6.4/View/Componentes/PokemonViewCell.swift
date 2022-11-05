//
//  PokemonViewCell.swift
//  LearningTask-6.4
//
//  Created by Italo cavalcanti on 05/11/22.
//

import UIKit

class PokemonViewCell: UITableViewCell {
    
    @IBOutlet weak var pokemonTitleLabel: UILabel!
    @IBOutlet weak var pokemonImageView: UIImageView!
    @IBOutlet weak var pokemonEvolucaoLabel: UILabel!
    @IBOutlet weak var pokemonTypeView: TipoDePokemonView!
    
    func setup(_ pokemon: Pokemon) {
        pokemonTitleLabel.text = pokemon.nome
        pokemonImageView.image = UIImage(named: pokemon.referencia)
        pokemonEvolucaoLabel.text = pokemon.evolucoes?.first?.nome ?? "N/A"
        pokemonTypeView.set(pokemon.tipo)
    }
}
