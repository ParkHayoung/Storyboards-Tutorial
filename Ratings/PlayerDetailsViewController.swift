//
//  PlayerDetailViewController.swift
//  Ratings
//
//  Created by HaYoung on 2017. 1. 29..
//  Copyright © 2017년 HaYoung. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {

    var player: Player?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    
    var game: String = "Chess" {
        didSet {
            detailLabel.text? = game
        }
    }
    
    @IBAction func unwindWithSelectedGame(segue: UIStoryboardSegue) {
        if let gamePickerViewController = segue.source as? GamePickerViewController,
            let selectedGame = gamePickerViewController.selectedGame {
            game = selectedGame
            
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SavePlayerDatail" {
            guard let text = nameTextField.text, text.characters.isEmpty == false else {
                return
            }
            player = Player(name: nameTextField.text!, game: game, rating: 1)
        }
        
        if segue.identifier == "PickGame" {
            if let gamePickerViewController = segue.destination as? GamePickerViewController {
                gamePickerViewController.selectedGame = game
            }
        }
    }

    
}
