//
//  FruitRowView.swift
//  Fructus
//
//  Created by sasan on 6/29/22.
//

import SwiftUI

struct FruitRowView: View {
    //MARK: - PPROPERTIES
    
    var fruit: Fruit
    
    //MARK: - BODY
    var body: some View {
        HStack{
           
            VStack(alignment: .trailing, spacing: 3){
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
                    .multilineTextAlignment(.trailing)
                   
                
            }
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80,height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
        }
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
