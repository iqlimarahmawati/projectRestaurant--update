//
//  RestaurantCombinedTableViewCell.swift
//  projectRestaurant
//
//  Created by Phincon on 01/03/23.
//

import UIKit

class RestaurantCombinedTableViewCell: UITableViewCell {
    
    // cara untuk kombinasiin collectionviiew ke dalam tableview
    
 static let identifier = "RestaurantCombinedTableViewCell"
    
    
    @IBOutlet weak var titlePlace: UILabel!
    @IBOutlet weak var forCollectionView: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
       setupCollection()
    }
    
    private func setupCollection(){
        
        forCollectionView.register(UINib(nibName: "RestaurantCombinedCollectionViewCell", bundle: nil), forCellWithReuseIdentifier:RestaurantCombinedCollectionViewCell.identifier)
        forCollectionView.delegate = self
        forCollectionView.dataSource = self
        
        
//        func setSelected(_ selected: Bool, animated: Bool) {
//            super.setSelected(selected, animated: animated)
        }
}
extension RestaurantCombinedTableViewCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
 
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RestaurantCombinedCollectionViewCell.identifier, for: indexPath) as? RestaurantCombinedCollectionViewCell else {
            return UICollectionViewCell()

        }
            return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/1.5, height: collectionView.frame.height)
    }

}
