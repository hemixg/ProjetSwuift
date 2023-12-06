//
//  AvatarRaw.swift
//  GroupeSport
//
//  Created by apprenant43 on 11/05/2023.
//


import SwiftUI

struct AvatarRaw: View {
    var avatarName : Profil
    var body: some View {
        HStack {
        Image(avatarName.avatar)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(height: 90)
            Text(avatarName.pseudo)
        }
        
    }
}

struct AvatarRaw_Previews: PreviewProvider {
    static var previews: some View {
        AvatarRaw(avatarName: Profil(avatar: "avatarBelleFleur", pseudo: "Belle Fleur", city: "Wasquehal, France", sport: "Gymnastique, danse contemporaine, football", description: "Toujours prête a découvrir de nouveaux sport", avatarAmi: "avatarLeBarbierDeSeville", avatarAmi2: "avatarLaBossDeRoubaix", avatarAmi3: "avatarRafaelDoBrazil", suggestedAvatar1: "avatarRunningLady", suggestedAvatar2: "avatarForceTantrique", suggestedAvatar3: "avatarRPZGolfGang"))
    }
}
