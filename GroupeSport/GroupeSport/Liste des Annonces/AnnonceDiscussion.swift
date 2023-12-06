//
//  AnnonceDiscussion.swift
//  GroupeSport
//
//  Created by apprenant39 on 11/05/2023.
//

import SwiftUI

struct AnnonceDiscussion: View {
    
    @State var newMessage  = ""
    
    var annonce: Annonce
    var body: some View {
        VStack{
            AnnoncesFrontPageRaw(annonce: annonce)
            Form {
                Section(header: Text("1 commentaire"))
                {
                    AnnoncesCommentRow(comment: annonce)
                }
            }
            Spacer()
            
            TextField("Ajouter un commentaire...", text: $newMessage)
                .padding(10)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.default)
                .navigationTitle("Description de l'annonce")
        }
    }
}

struct AnnonceDiscussion_Previews: PreviewProvider {
    static var previews: some View {
        AnnonceDiscussion(annonce:Annonce(titreAnnonce: "Cherche partenaire de Tennis", timeAnnonce: "20h00", descriptionAnnonce: "Bonjour, je recherche un ou plusieurs participant pour une partie de Tennis tous niveaux accepté", dateOfDay: "16/05", nameAvatar: "Zelda Nadal",icon: "tennis.racket", name: "Tennis", profil: Profil(avatar: "avatarLaBossDeRoubaix", pseudo: "Zelda Nadal", city: "Roubaix, France", sport: "Tennis, Football, Natation", description: "Amateur de sport cherche a pratiquer entre amis", avatarAmi: "avatarLe BarbierDeSeville", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""), comment: Comment(time: "18h32", text: "Bonjour, je suis très interessé", avatarReponse: "avatarLeBarbierDeSeville", nameReponse: "")))
    }
}
