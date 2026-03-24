//
//  ViewController.swift
//  TravelPlanner
//
//  Created by Yezen Armout on 3/24/26.
//

import UIKit

class TripsViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trips.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = trips[indexPath.row].name
        return cell
    }
    
    
    struct Trip {
        let name: String
    }
    
    let trips = [
        Trip(name: "Paris"),
        Trip(name: "New York"),
        Trip(name: "Tokyo")
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
    }


}

