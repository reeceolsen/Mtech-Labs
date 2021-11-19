//
//  AddPlayerViewController.swift
//  scoreboard
//
//  Created by Reece Olsen on 10/20/21.
//

import UIKit

//protocol PlayerDelegate {
//    func didCreatePlayer
//}
class AddPlayerViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var currentScoreTextField: UITextField!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Player"
        // Do any additional setup after loading the view.
        
        
        
        
        
        
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
//        guard let name = nameTextField.text, let score = currentScoreTextField.text else { return }
        if let name = nameTextField.text, let score = currentScoreTextField.text, let someScore = Double(score) {
            players.append(Player(id: UUID(), playerName: name, playerScore: someScore))
            
        }
        
        navigationController?.popViewController(animated: true)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
