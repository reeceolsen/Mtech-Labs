//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Reece Olsen on 10/8/21.
//

import UIKit

class AthleteFormViewController: UIViewController {
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var leagueText: UITextField!
    @IBOutlet weak var teamText: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        guard let name = nameText.text, let age = ageText.text, let league = leagueText.text, let team = teamText.text else { return }
        athlete = Athlete(name: name, age: age, league: league, team: team)
    }
    
    var athlete: Athlete?
    
    init?(coder: NSCoder, athlete: Athlete?){
        self.athlete = athlete
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateFormView()
        // Do any additional setup after loading the view.
    }
    func updateFormView() {
        if let confirmedAthlete = athlete {
            print("\(confirmedAthlete)")
            nameText.text = confirmedAthlete.name
            teamText.text = confirmedAthlete.team
            leagueText.text = confirmedAthlete.league
            ageText.text = "\(confirmedAthlete.age)"
            
        }
        
    }



}
