//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by sasan on 7/2/22.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    let nutrients: [String] = ["انرژی","قند","چربی","پروتین","ویتامین","مواد معدنی"]
    
    //MARK: - BODY
    var body: some View {
        GroupBox(){
            DisclosureGroup("ارزش غذایی در هر 100 گرم"){
                ForEach(0..<nutrients.count, id: \.self){ item in
                    Divider().padding(.vertical, 2)
                    HStack{
                        Group{
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                        
                        
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                    }
                    
                }
            }
        }
        
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
