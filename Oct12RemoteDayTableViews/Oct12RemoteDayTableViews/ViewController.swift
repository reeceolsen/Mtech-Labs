//
//  ViewController.swift
//  Oct12RemoteDayTableViews
//
//  Created by Reece Olsen on 10/12/21.
//

import UIKit
    struct PetName {
        var id: UUID
        var name: String
        var animal: String
}
class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var petNames = [PetName(id: UUID(), name: "Bark", animal: "Dog"), PetName(id: UUID(), name: "Meow", animal: "Cat"), PetName(id: UUID(), name: "Tweet", animal: "Bird")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCreateNew", let vc = segue.destination as? DetailViewController {
            vc.delegate = self
        }
        if segue.identifier == "toEdit", let vc = segue.destination as? DetailViewController, let petName = sender as? PetName {
            vc.delegate = self
            vc.petName = petName
        }
    }
    
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let petName = petNames[indexPath.row]
        performSegue(withIdentifier: "toEdit", sender: petName)
    }
}
extension ViewController: UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Basic Cell", for: indexPath)
        let petName = petNames[indexPath.row]
      
        cell.textLabel?.text = petName.name
        cell.detailTextLabel?.text = petName.animal
        
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petNames.count
    }
    
}
extension ViewController: DetailViewControllerDelegate {
    func didCreateNewPetName(_ newPetName: PetName) {
        petNames.append(newPetName)
    }
    func didEditPetName(_ editedPetName: PetName) {
        guard let editedIndex = (petNames.firstIndex { storedPetName in storedPetName.id == editedPetName.id }) else {
            print("error")
            return
        }
        petNames.remove(at: editedIndex)
        petNames.insert(editedPetName, at: editedIndex)
    }
}
