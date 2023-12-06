//
//  BigButtonRaw.swift
//  GroupeSport
//
//  Created by apprenant43 on 05/05/2023.
//

import SwiftUI

struct BigButtonRaw: View {
    
    var bigButton: BigButton
    
    var body: some View {
            Text(bigButton.title)
                .padding(EdgeInsets(top: 12, leading: 25, bottom: 12, trailing: 25))
                .font(.title2)
                .foregroundColor(.white)
                .background(bigButton.buttonColor)
                .cornerRadius(10)
                .fontWeight(.semibold)
    }
}
struct BigButtonRaw_Previews: PreviewProvider {
    static var previews: some View {
        BigButtonRaw(bigButton: BigButton(title: "Enregistrer", buttonColor: .blue))
    }
}
