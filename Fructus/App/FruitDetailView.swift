//
//  FruitDetailView.swift
//  Fructus
//
//  Created by sasan on 6/30/22.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTIES
    
    var fruit: Fruit
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    //HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    
                    VStack(alignment: .leading, spacing: 20){
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                        
                        //NUTRIENTS
                            FruitNutrientsView(fruit: fruit)
                        
                        //SUBHEADLINE
                        Text("توضیحات بیشتر \(fruit.title)")
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }//VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 460, alignment: .center)
                    
                }//VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//: SCROLL
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
