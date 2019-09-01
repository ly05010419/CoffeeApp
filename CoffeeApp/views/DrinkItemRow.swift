//
//  DrinkItemRow.swift
//  CoffeeApp
//
//  Created by LiYong on 01.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct DrinkItemRow: View {
    var name:String
    var drinks:[Drink]
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            Text(name).font(.largeTitle).foregroundColor(.primary).padding(.leading,20)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top,spacing: 20){
                    ForEach(self.drinks){ drink in
                        DrinkItem(drink: drink).frame(width: 300).padding(.all, 20)
                    }
                }
            }
        }
    }
}

struct DrinkItemRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItemRow(name: "Hot Drinks", drinks: drinkDataList)
    }
}
