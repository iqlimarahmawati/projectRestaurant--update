//
//  RestaurantCombinedCollectionViewCell.swift
//  projectRestaurant
//
//  Created by Phincon on 01/03/23.
//

import UIKit

class RestaurantCombinedCollectionViewCell: UICollectionViewCell {

    static let identifier = "RestaurantCombinedCollectionViewCell"
    
    @IBOutlet weak var imagePlace: UIImageView!
    @IBOutlet weak var nameWaiters: UILabel!
    @IBOutlet weak var nameArea: UILabel!
    @IBOutlet weak var placePrice: UILabel!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

}
