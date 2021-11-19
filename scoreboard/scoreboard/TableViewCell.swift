//
//  TableViewCell.swift
//  scoreboard
//
//  Created by Reece Olsen on 10/20/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var playerNameLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func stepperAction(_ sender: Any) {
                
    }
    func update(with player: Player) {
        playerNameLabel.text = player.playerName
        playerScoreLabel.text = String(player.playerScore)
        stepper.value = player.playerScore
    }
    
}
