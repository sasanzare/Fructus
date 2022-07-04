//
//  SourceLinkView.swift
//  Fructus
//
//  Created by sasan on 7/1/22.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Text("منبع محتوا")
                Spacer()
                Link("ویکی پدیا", destination:  URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.left.square")
                
               
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
