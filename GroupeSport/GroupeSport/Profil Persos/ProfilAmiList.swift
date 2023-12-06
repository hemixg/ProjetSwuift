//
//  ProfilAmiList.swift
//  GroupeSport
//
//  Created by apprenant43 on 12/05/2023.
//

import SwiftUI

struct ProfilAmiList: View {
    
    var profil: Profil
    
    var body: some View {
            HStack {
                Image(profil.avatarAmi)
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    
                Image(profil.avatarAmi2)
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    
                Image(profil.avatarAmi3)
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
        }
            .padding(.vertical, -25)
    }
}

struct ProfilAmiList_Previews: PreviewProvider {
    static var previews: some View {
        ProfilAmiList(profil: Profil(avatar: "avatarBelleFleur", pseudo: "Belle Fleur", city: "Wasquehal, France", sport: "Gymnastique, danse contemporaine, football", description: "Toujours prête a découvrir de nouveaux sport", avatarAmi: "avatarLeBarbierDeSeville", avatarAmi2: "avatarLaBossDeRoubaix", avatarAmi3: "avatarRafaelDoBrazil", suggestedAvatar1: "avatarLadyRunning", suggestedAvatar2: "avatarForceTantrique", suggestedAvatar3: "avatarRPZGolfGang"))
    }
}
