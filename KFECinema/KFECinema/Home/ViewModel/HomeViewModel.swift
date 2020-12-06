//
//  HomeViewModel.swift
//  KFECinema
//
//  Created by VIMAL KUMAR VEERACHAMY on 12/6/20.
//

import Foundation


public class HomeViewModel {

    var items = [HomeModel]()
    
    func configureHomeModels() {
        
        //1. Add Movies
        self.items.append(getMovieModel())
        
        //2. Add Kitchens
        self.items.append(getKitchenModel())
        
        //3. Add Fast Foods
        self.items.append(getFoodModel())
        
    }
    
    func sectionCount() -> Int {
        
        return items.count
    }
    
    func rowCountForSection(index: Int) -> Int {
        
        return items[index].items.count
    }
    
    
}

extension HomeViewModel {
    
    
    func getMovieModel() -> HomeModel {
        
        return HomeModel(iconName: "clapperboard", sectionName: "MOVIES IN CINEMAS", items: movies())
    }
    
    func getKitchenModel() -> HomeModel {
        
        return HomeModel(iconName: "kitchen", sectionName: "SPICE KITCHEN", items: kitchens())
    }
    
    func getFoodModel() -> HomeModel {
        
        return HomeModel(iconName: "fastfood", sectionName: "CONCESSION ZONE", items: foods())
    }
    
    
    func movies() -> [HomeItem] {
               
        var movies = [HomeItem]()
        
        let movie1 = HomeItem(imgName: "movie1", name: "First Reformed", descName: "Metascore 94%")
        let movie2 = HomeItem(imgName: "movie2", name: "Sicario 2", descName: "Metascore 92%")
        let movie3 = HomeItem(imgName: "movie3", name: "Skyscraper", descName: "Metascore 88%")
        let movie4 = HomeItem(imgName: "movie2", name: "Sicario 2", descName: "Metascore 92%")
        let movie5 = HomeItem(imgName: "movie1", name: "First Reformed", descName: "Metascore 94%")
        
        movies.append(movie1)
        movies.append(movie2)
        movies.append(movie3)
        movies.append(movie4)
        movies.append(movie5)
        
        return movies
    }
    
    
    func kitchens() -> [HomeItem] {
        
        var kitchens = [HomeItem]()
        
        let kitchen1 = HomeItem(imgName: "popcorn", name: "Popcorn", descName: "")
        let kitchen2 = HomeItem(imgName: "cookies", name: "Cookies", descName: "")
        let kitchen3 = HomeItem(imgName: "frenchfries", name: "French fries", descName: "")
        let kitchen4 = HomeItem(imgName: "cookies", name: "Cookies", descName: "")
        let kitchen5 = HomeItem(imgName: "frenchfries", name: "French fries", descName: "")
        
        kitchens.append(kitchen1)
        kitchens.append(kitchen2)
        kitchens.append(kitchen3)
        kitchens.append(kitchen4)
        kitchens.append(kitchen5)
        
        return kitchens
    }
    
    
    func foods() -> [HomeItem] {

        var foods = [HomeItem]()
        
        let food1 = HomeItem(imgName: "eggroll", name: "Egg Roll", descName: "")
        let food2 = HomeItem(imgName: "minisamosa", name: "Mini samosa", descName: "")
        let food3 = HomeItem(imgName: "sandwich", name: "Sandwitch", descName: "")
        let food4 = HomeItem(imgName: "minisamosa", name: "Mini samosa", descName: "")
        let food5 = HomeItem(imgName: "sandwich", name: "Sandwitch", descName: "")
        
        foods.append(food1)
        foods.append(food2)
        foods.append(food3)
        foods.append(food4)
        foods.append(food5)
        
        return foods
    }
    
    
}
