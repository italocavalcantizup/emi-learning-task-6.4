//
//  ViewController.swift
//  LearningTask-6.4
//
//  Created by rafael.rollo on 12/04/2022.
//

import UIKit

class PokemonAppViewController: UITableViewController {
    
    var pokemonStore: PokemonStore?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        loadSession()
    }
    
    func setupViews() {
        tableView.tableHeaderView = HeaderView.com(titulo: "Pokédex")
    }
    
    func loadSession() {
        guard let _ = pokemonStore else { return }
    }
    
    //Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemonStore?.todos.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonViewCell", for: indexPath) as? PokemonViewCell else {
            fatalError("Não foi possível obter a célula para a lista")
        }
        cell.setup(pokemonStore!.todos[indexPath.row])
        return cell
    }
    
    //Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
