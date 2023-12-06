//
//  AnnoncesFrontPageRaw.swift
//  GroupeSport
//
//  Created by apprenant43 on 09/05/2023.
//

import SwiftUI

struct AnnoncesFrontPageRaw: View {
    var annonce: Annonce
    @State var isLiked = false
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(annonce.profil.avatar)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    VStack(alignment: .leading, spacing: 4) {
                        Text(annonce.titreAnnonce)
//                            .font(.subheadline)
//                            .foregroundColor(.blue)
                            .bold()
                        Text(annonce.nameAvatar)
                            .font(.footnote)

                }
                Spacer()
                Text(annonce.timeAnnonce)
                    .foregroundColor(.gray)
                    .font(.subheadline)

            }
            Text(annonce.descriptionAnnonce)
//                .font(.body)
//            HStack(spacing: 16) {
//                Spacer()
//                Button(action: {
//                    isLiked.toggle()
//                }, label: {
//                    Image(systemName: "heart")
//                        .font(.title2)
//                        .foregroundColor(.red)
//                })
//                Button(action: {
//
//                }, label: {
//                    Image(systemName: "message")
//                        .font(.title2)
//                        .foregroundColor(.blue)
//                })
//
//                Button(action: {
//
//                }, label: {
//                    Image(systemName: "bookmark")
//                        .font(.title2)
//                        .foregroundColor(.yellow)
//                })
//            }
        }
        .padding(10)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}
struct AnnounceView_Previews: PreviewProvider {
    static var previews: some View {
        AnnoncesFrontPageRaw(annonce: Annonce(titreAnnonce: "Recherche partenaire tennis", timeAnnonce: "20h00", descriptionAnnonce: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", dateOfDay: "16/05", nameAvatar: "LaBossDeRoubaix",icon: "", name: "", profil: Profil(avatar: "avatarLaBossDeRoubaix", pseudo: "", city: "", sport: "", description: "", avatarAmi: "", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""), comment: Comment(time: "", text: "", avatarReponse: "", nameReponse: "")))
    }
}
