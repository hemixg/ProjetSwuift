//
//  AnnonceDetailFirstPart.swift
//  GroupeSport
//
//  Created by apprenant43 on 12/05/2023.
//

import SwiftUI

struct AnnonceDetailFirstPart: View {
    
    var annonce: Annonce
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Image(systemName: annonce.icon)
                    .font(.title2)
                    .foregroundColor(.brown)
                    .bold()
                Text(annonce.name)
                    .font(.title2)
            }
            Divider()
            HStack {
                Image(systemName: "calendar")
                    .font(.title2)
                    .foregroundColor(.blue)
                    .bold()
                Text("\(annonce.dateOfDay) à \(annonce.timeAnnonce)")
                    .font(.title3)
            }
            Divider()
            HStack {
                Image(systemName: "globe.europe.africa")
                    .font(.title2)
                    .foregroundColor(.green)
                    .bold()
                Text(annonce.profil.city)
                    .font(.title3)
            }
            Divider()
            HStack {
                Image(systemName: "car")
                    .font(.title2)
                    .bold()
                Text("Je peux fournir le covoiturage")
                    .font(.title3)
            }
            Divider()
        }
    }
}

struct AnnonceDetailFirstPart_Previews: PreviewProvider {
    static var previews: some View {
        AnnonceDetailFirstPart(annonce: Annonce(titreAnnonce: "Recherche un partenaire de tennis ", timeAnnonce: "20H", descriptionAnnonce: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis egestas dui ex, ut consequat elit pulvinar non. Mauris scelerisque tortor in placerat ullamcorper.", dateOfDay: "20/05", nameAvatar: "Jean-Charles Bob", icon: "basketball.fill", name: "Basket", profil: Profil(avatar: "avatarLaBossDeRoubaix", pseudo: "", city: "Roubaix, France", sport: "", description: "", avatarAmi: "", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""), comment: Comment(time: "", text: "", avatarReponse: "", nameReponse: "Le Barbier De Seville")))
    }
}
