//
//  HomeSectionView.swift
//  KFECinema
//
//  Created by VIMAL KUMAR VEERACHAMY on 12/6/20.
//

import UIKit

class HomeSectionView: UITableViewHeaderFooterView {

    static let reuseIdentifier: String = String(describing: self)
    
    @IBOutlet weak var iconImgView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    
    static var nib: UINib {
           return UINib(nibName: String(describing: self), bundle: nil)
       }
    
    func configure(titleName: String, imgName: String) {
        self.titleLbl.text = titleName
        self.iconImgView.image = UIImage(named: imgName)
    }
    
}
