//
//  ViewController.swift
//  projectRestaurant
//
//  Created by Phincon on 22/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    var place : [RestaurantPlaceModel] = [
        RestaurantPlaceModel(namePlace: "Spanish"),
        RestaurantPlaceModel(namePlace: "Asian"),
        RestaurantPlaceModel(namePlace: "Latino"),
        RestaurantPlaceModel(namePlace: "American"),
        RestaurantPlaceModel(namePlace: "Brunch"),
        RestaurantPlaceModel(namePlace: "Vegetarian"),
        RestaurantPlaceModel(namePlace: "italian"),
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(RestaurantPlacesTableViewCell.self, forCellReuseIdentifier: RestaurantPlacesTableViewCell.identifier)
        setUpTable()
    }
    
    func setUpTable(){
        let cellNib = UINib(nibName: "RestaurantCombinedTableViewCell", bundle: nil)
        
        tableview.register(cellNib, forCellReuseIdentifier: "RestaurantCombinedTableViewCell")
    }
            

}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return place.count
        case 1:
            return 1
        default:
            return 1
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
        case 0:
            guard let myCell = tableView.dequeueReusableCell(withIdentifier: RestaurantPlacesTableViewCell.identifier, for: indexPath) as? RestaurantPlacesTableViewCell else {
                return UITableViewCell()}
            
            let restaurantPlace = place[indexPath.row]
            let namePlace = restaurantPlace.namePlace
            myCell.placeLabel.text = namePlace
            
            myCell.didSetup()
            return myCell
            
        case 1 :
            guard let cell = tableview.dequeueReusableCell(withIdentifier: RestaurantCombinedTableViewCell.identifier, for: indexPath) as? RestaurantCombinedTableViewCell else {
                return UITableViewCell()}
            
            return cell
            
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section{
        case 0:
            return 100
        default:
            return 360
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Storyboard", bundle: nil)
        if let homeRestaurantViewController = storyboard.instantiateViewController(withIdentifier: "HomeRestaurantViewController") as? HomeRestaurantViewController {
            navigationController?.pushViewController(homeRestaurantViewController, animated: true)
        }
    }

}

//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 2
//    }
    


