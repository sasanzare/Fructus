//
//   StartButtonView.swift
//  Fructus
//
//  Created by sasan on 6/27/22.
//

import SwiftUI

struct _StartButtonView: View {
    // MARK: - PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }){
            HStack(spacing: 8){
                Image(systemName: "arrow.left.circle")
                    .imageScale(.large)
                Text("ورود")
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }
        .accentColor(Color.white)
        
    }
}

struct _StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        _StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
