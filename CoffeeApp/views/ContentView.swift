//
//  ContentView.swift
//  CoffeeApp
//
//  Created by LiYong on 01.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            List{
                DrinkItemRow(name: "Hot Drinks", drinks: drinkDataList).listRowInsets(EdgeInsets())
                DrinkItemRow(name: "Cold Drinks", drinks: drinkDataList).listRowInsets(EdgeInsets())
            }.navigationBarTitle(Text("Cofee Shop"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
