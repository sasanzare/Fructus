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
                Image(systemName: "arrow.up.left.square")
                Link("ویکی پدیا", destination:  URL(string: "https://wikipedia.com")!)
                Spacer()
                Text("منبع محتوا")
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
