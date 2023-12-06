//
//  Navigationtest.swift
//  GroupeSport
//
//  Created by apprenant43 on 09/05/2023.
//

import SwiftUI

struct Navigationtest: View {
    var body: some View {
        
            NavigationLink {
                ProfilColoredFaceRow(profil: Profil(avatar: "avatarLaBossDeRoubaix", pseudo: "La Boss De Roubaix", city: "Roubaix, France", sport: "Natation, Football, etc", description: "Je commence le sport et suis très interessé par plein de choses", avatarAmi: "avatarForceTantrique", avatarAmi2: "avatarForceTantrique", avatarAmi3: "avatarForceTantrique", suggestedAvatar1: "avatarForceTantrique", suggestedAvatar2: "avatarForceTantrique", suggestedAvatar3: "avatarForceTantrique"))
            } label: {
                Image("avatarLaBossDeRoubaix")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .clipShape(Circle())
            }
            
        }
    
}

struct Navigationtest_Previews: PreviewProvider {
    static var previews: some View {
        Navigationtest()
    }
}
