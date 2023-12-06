//
//  SmallButtonRaw.swift
//  GroupeSport
//
//  Created by apprenant43 on 05/05/2023.
//

import SwiftUI

struct SmallButtonRaw: View {
    
    var smallButton: SmallButton
    
    var body: some View {
            Text(smallButton.title)
                .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 20))
                .font(.title2)
                .background(smallButton.buttonColor)
                .foregroundColor(.white)
                .cornerRadius(10)
                .fontWeight(.semibold)
    }
}

struct SmallButtonRaw_Previews: PreviewProvider {
    static var previews: some View {
        SmallButtonRaw(smallButton: SmallButton(title: "Valider", buttonColor: .blue))
    }
}
