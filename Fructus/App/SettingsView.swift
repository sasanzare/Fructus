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
                Text("hi")
                       
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

