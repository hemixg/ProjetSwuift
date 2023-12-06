//
//  AnnoncesDetailTitre.swift
//  GroupeSport
//
//  Created by apprenant43 on 11/05/2023.
//

import SwiftUI

struct AnnoncesDetailTitre: View {
    
    var annonce: Annonce
    
    var body: some View {
            HStack {
                Image(annonce.profil.avatar)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(height: 90)
                Text(annonce.nameAvatar)
                        .font(.title3)
                Spacer()
                }
            }
}


struct AnnoncesDetailTitre_Previews: PreviewProvider {
    static var previews: some View {
        AnnoncesDetailTitre(annonce: Annonce(titreAnnonce: "Partageons une partie de tennis", timeAnnonce: "", descriptionAnnonce: "", dateOfDay: "", nameAvatar: "Boss De Roubaix", icon: "", name: "", profil: Profil(avatar: "avatarLaBossDeRoubaix", pseudo: "", city: "", sport: "", description: "", avatarAmi: "", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""), comment: Comment(time: "", text: "", avatarReponse: "", nameReponse: "")))
    }
}
