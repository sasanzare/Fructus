//
//  SettingsRowView.swift
//  Fructus
//
//  Created by sasan on 7/8/22.
//  Https:/sasanzare.ir

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    
    
    //MARK: - BODY
    
    var body: some View {
        HStack{
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil){
                    Text(content!)
                }else if(linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.left.square").foregroundColor(.pink)
                }else{
                    EmptyView()
                }
               
            }
    
            
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            SettingsRowView(name: "توسعه دهنده", content: "ساسان زارع")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "وب سایت", linkLabel: "sasanzaare.ir", linkDestination: "https://sasanzare.ir" )
                .previewLayout(.fixed(width: 375, height: 60))
                .preferredColorScheme(.dark)
                .padding()
        
        }
    }
}
