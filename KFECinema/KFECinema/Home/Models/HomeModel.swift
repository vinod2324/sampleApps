//
//  HomeModel.swift
//  KFECinema
//
//  Created by VIMAL KUMAR VEERACHAMY on 12/6/20.
//

import Foundation

public class HomeModel {
    
    let iconName: String
    let sectionName: String
    let items: [HomeItem]
    
    
    init(iconName: String, sectionName: String, items: [HomeItem]) {
        self.iconName = iconName
        self.sectionName = sectionName
        self.items = items
    }
    

}
