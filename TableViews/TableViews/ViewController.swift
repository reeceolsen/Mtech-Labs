//
//  ViewController.swift
//  TableViews
//
//  Created by Reece Olsen on 10/11/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
   
    var dates = [Date]()
    
    @IBOutlet weak var tableView: UITableView!
    @IBAction func plusButtonTapped(_ sender: Any) {
        dates.append(Date())
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
        let date = dates[indexPath.row]
        cell.textLabel?.text = "\(date)"
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

