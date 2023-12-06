//
//  AnnoncesCommentRow.swift
//  GroupeSport
//
//  Created by apprenant39 on 12/05/2023.
//

import SwiftUI

struct AnnoncesCommentRow: View {
    var comment : Annonce
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Image(comment.comment.avatarReponse)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 4) {
                    Text(comment.comment.nameReponse)
                        .font(.callout)
                        .fontWeight(.bold)
                }
                Spacer()
                Text(comment.comment.time)
                    .foregroundColor(.gray)
                    .font(.subheadline)
                
            }

            Text(comment.comment.text)
                .font(.body)
            HStack(spacing: 16) {
                Spacer()
            }
        }
        .padding(10)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct AnnoncesCommentRow_Previews: PreviewProvider {
    static var previews: some View {
        AnnoncesCommentRow(comment: Annonce(titreAnnonce: "", timeAnnonce: "", descriptionAnnonce: "", dateOfDay: "", nameAvatar: "", icon: "", name: "", profil: Profil(avatar: "avatarLeBarbierDeSeville", pseudo: "Le Barbier De Seville", city: "", sport: "", description: "", avatarAmi: "", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""), comment: Comment(time: "10h45", text: "Merci j'y serais!", avatarReponse: "avatarLeBarbierDeSeville", nameReponse: "Le Barbier De seville")))
    }
}
