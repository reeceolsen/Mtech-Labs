//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Reece Olsen on 10/11/21.
//

import UIKit

class FoodTableViewController: UITableViewController {
    var meals: [Meal] {
        let breakfast = Meal(name: "breakfast", food: [
            Food(name: "Toast", description: "Bread toasted in a toaster and butter spread and melted on top"),
            Food(name: "Orange", description: "a fruit"),
            Food(name: "Water", description: "water")
        ])
        let lunch = Meal(name: "lunch", food: [
            Food(name: "Toast", description: "Bread toasted in a toaster and butter spread and melted on top"),
            Food(name: "Orange", description: "a fruit"),
            Food(name: "Water", description: "water")
        ])
        let dinner = Meal(name: "dinner", food: [
            Food(name: "Toast", description: "Bread toasted in a toaster and butter spread and melted on top"),
            Food(name: "Orange", description: "a fruit"),
            Food(name: "Water", description: "water")
        ])
        return [breakfast,lunch,dinner]
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let meal = meals[section]
        return meal.food.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get the data for this row
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]

        // get the cell for this row
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        
        // Update the cell we got with the data we got for this row
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description
        
        // return the cell with the data on it.
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let meal = meals[section]
        return meal.name
    }
   }
