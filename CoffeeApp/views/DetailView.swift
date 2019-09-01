//
//  DetailView.swift
//  CoffeeApp
//
//  Created by LiYong on 01.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    var drink:Drink
    
    var body: some View {
        List{
            ZStack(alignment: .bottom){
                Image(drink.imageName).resizable().aspectRatio(contentMode: .fit)
                Rectangle().frame(height: 50).opacity(0.25).blur(radius: 2)
                HStack(alignment: .top){
                    Text(drink.name).foregroundColor(.white).font(.largeTitle).padding(.all,10)
                    Spacer()
                }
            }.listRowInsets(EdgeInsets())
            
            VStack{
                Text(drink.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12.0)
                
                Button("Order Now"){
                    print("action")
                }
                .frame(width: 200, height: 40)
                .foregroundColor(.black)
                .background(Color.blue)
                .cornerRadius(5).padding(.all,20)
                
            }.listRowInsets(EdgeInsets())
        }.navigationBarTitle(Text(drink.name),displayMode: .inline)
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(drink: drinkDataList[4])
    }
}
