//
//  AnnoncesDetailsSecondPart.swift
//  GroupeSport
//
//  Created by apprenant43 on 12/05/2023.
//

import SwiftUI

struct AnnoncesDetailsSecondPart: View {
    
    var annonce: Annonce
    @Binding var participate : Bool
    @Binding var notif : Bool
    
    var body: some View {
        HStack {
            Spacer()
            NavigationLink
            {
                AnnonceDiscussion(annonce: annonce)
            } label: {
                Text("Discuter")
                    .fontWeight(.medium)
                    .padding(15)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue, lineWidth: 2) )
            }
            Spacer()
            Button {
                notif.toggle()
                self.participate.toggle()
            } label: {
                Text("Je participe")
                    .fontWeight(.medium)
                    .padding(12)
                    .background(participate ? Color.blue : Color.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(participate ? Color.blue : Color.black, lineWidth: 2) )
                
            }
            .foregroundColor(participate ? Color.white : Color.black)
            Spacer()
        }
    }
}

struct AnnoncesDetailsSecondPart_Previews: PreviewProvider {
    static var previews: some View {
        AnnoncesDetailsSecondPart(annonce: Annonce(titreAnnonce: "Recherche un partenaire de tennis ", timeAnnonce: "20H", descriptionAnnonce: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis egestas dui ex, ut consequat elit pulvinar non. Mauris scelerisque tortor in placerat ullamcorper.", dateOfDay: "20/05", nameAvatar: "Jean-Charles Bob", icon: "basketball.fill", name: "Basket", profil: Profil(avatar: "avatarLaBossDeRoubaix", pseudo: "", city: "Roubaix, France", sport: "", description: "", avatarAmi: "", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""), comment: Comment(time: "", text: "", avatarReponse: "", nameReponse: "")), participate: .constant(false), notif: .constant(false))
    }
}
