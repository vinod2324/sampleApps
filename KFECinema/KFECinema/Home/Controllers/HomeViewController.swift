//
//  HomeViewController.swift
//  KFECinema
//
//  Created by VIMAL KUMAR VEERACHAMY on 12/6/20.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var homeTblView: UITableView!
    
    var viewModel: HomeViewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.homeTblView.backgroundColor = UIColor.init(red: 17.0/255.0, green: 17.0/255.0, blue: 17.0/255.0, alpha: 1.0)
        
        self.homeTblView.register(HomeSectionView.nib, forHeaderFooterViewReuseIdentifier:HomeSectionView.reuseIdentifier)
    
        viewModel.configureHomeModels()
        
    }
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.sectionCount()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        guard let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: HomeSectionView.reuseIdentifier) as? HomeSectionView else { return nil }
        
        let model = viewModel.items[section]
        
        headerView.configure(titleName: model.sectionName, imgName: model.iconName)
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "homecell", for: indexPath) as? HomeTblViewCell {
            
            cell.homeModel = viewModel.items[indexPath.section]
            cell.selectionStyle = .none
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 300
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 60.0
    }
    
    
}
