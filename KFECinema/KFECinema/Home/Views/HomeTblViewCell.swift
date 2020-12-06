//
//  HomeTblViewCell.swift
//  KFECinema
//
//  Created by VIMAL KUMAR VEERACHAMY on 12/6/20.
//

import UIKit

protocol CollectionViewCellDelegate: class {
    
    func collectionView(collectionviewcell: HomeCollectionViewCell?, index: Int, didTappedInTableViewCell: HomeTblViewCell)
}


class HomeTblViewCell: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var homeModel: HomeModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}

extension HomeTblViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        self.homeModel?.items.count ?? 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionCell", for: indexPath) as? HomeCollectionViewCell {
            
            if let homeItem = self.homeModel?.items[indexPath.row] {
                cell.configureCell(imgName: homeItem.imgName, name: homeItem.name, descName: homeItem.descName)
            }
            
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    
    // Add spaces at the beginning and the end of the collection view
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
    }
    
}
