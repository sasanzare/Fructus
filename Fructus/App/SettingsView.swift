//
//  SettingsView.swift
//  Fructus
//
//  Created by sasan on 7/3/22.
//

import SwiftUI

struct SettingsView: View {
    //MARK: -PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    //MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                          SettingsLabelView(labelText: "میوه‌ها", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("بیشتر میوه ها به طور طبیعی چربی، سدیم و کالری کمی دارند. هیچکدام کلسترول ندارند میوه ها منابع بسیاری از مواد مغذی ضروری از جمله پتاسیم، فیبر غذایی، ویتامین ها و بسیاری موارد دیگر هستند.")
                                .font(.footnote)
                        }
                       
                    }
                    
                    //MARK: - SECTION 2
                    //MARK: - SECTION 3
                
                       
                }
                .navigationBarTitle(Text("تنظیمات"), displayMode: .large)
                .navigationBarItems( trailing:
                    Button(action:{
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                }
                )
                .padding()
            }
        }.environment(\.layoutDirection, .rightToLeft)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}

