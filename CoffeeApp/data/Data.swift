//
//  Data.swift
//  CoffeeApp
//
//  Created by LiYong on 01.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import Foundation

let drinkData:Drink = load("drinkdata")
let drinkDataList:[Drink] = loadList("drinks")


struct Drink : Hashable, Codable, Identifiable {
    var id:Int
    var name:String
    var imageName:String
    var description:String
    var category:Category
    
    enum Category:String,CaseIterable,Codable,Hashable {
        case hot = "hot"
        case cold = "cold"
    }
    
}

func load(_ filename:String)->Drink{
    let data:Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: "json") else{
        fatalError("no File")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch  {
        fatalError("Coudn't load File")
    }
    
    do {
       return try JSONDecoder().decode(Drink.self, from: data)
    } catch  {
        fatalError("Coudn't decode File")
    }
}


func loadList(_ filename:String)->[Drink]{
    
    let data:Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: "json") else{
        fatalError("no File")
    }

    do {
        data = try Data(contentsOf: file)
    } catch  {
        fatalError("Coudn't load File")
    }
    
    do {
       return try JSONDecoder().decode([Drink].self, from: data)
    } catch  {
        fatalError("Coudn't decode File")
    }
}

