//
//  DrinkItem.swift
//  CoffeeApp
//
//  Created by LiYong on 01.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct DrinkItem: View {
    var drink:Drink
    
    var body: some View {
        VStack(alignment: .leading,spacing: 16.0){
            
            NavigationLink(destination: DetailView(drink: drink)) {
                Image(drink.imageName)
                    .resizable()
                    .aspectRatio(contentMode:.fill)
                    .cornerRadius(10)
                    .shadow(radius:5)
                    .frame(width:300,height:220)
            }
            
            VStack(alignment: .leading, spacing: 16.0){
                Text(drink.name)
                    .foregroundColor(.primary)
                    .font(.headline)
                Text(drink.description)
                    .foregroundColor(.secondary)
                    .font(.subheadline)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .frame(height: 40)
            }
        }
    }
}

struct DrinkItem_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData)
    }
}
