//
//  annonceDetailView.swift
//  GroupeSport
//
//  Created by apprenant62 on 04/05/2023.
//

import SwiftUI

struct AnnonceDetailView: View {
    
    var id = UUID()
    var annonce: Annonce

    @State var isOn = false
    @State var comment = false
    @Binding var notif : Bool
    @Binding var participate : Bool
    
    var body: some View {
            VStack (alignment: .leading){
                NavigationLink {
                    ProfilColoredFaceRow(profil: annonce.profil)
                } label: {
                AnnoncesDetailTitre(annonce: annonce)
                }

                Divider()
                Text(annonce.descriptionAnnonce)
                Divider()
                AnnonceDetailFirstPart(annonce: annonce)
                Spacer()
                AnnoncesDetailsSecondPart(annonce: annonce, participate: $participate, notif: $notif)
                Spacer()
            }
        .padding()
        .navigationBarTitle(annonce.titreAnnonce)
        
    }
}
struct AnnonceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AnnonceDetailView(annonce: Annonce(titreAnnonce: "Recherche un partenaire de tennis ", timeAnnonce: "20H", descriptionAnnonce: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis egestas dui ex, ut consequat elit pulvinar non. Mauris scelerisque tortor in placerat ullamcorper.", dateOfDay: "20/05", nameAvatar: "Jean-Charles Bob", icon: "basketball.fill", name: "Basket", profil: Profil(avatar: "avatarLaBossDeRoubaix", pseudo: "", city: "Roubaix, France", sport: "", description: "", avatarAmi: "", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""), comment: Comment(time: "", text: "", avatarReponse: "", nameReponse: "")), notif: .constant(false), participate: .constant(false))
    }
}
