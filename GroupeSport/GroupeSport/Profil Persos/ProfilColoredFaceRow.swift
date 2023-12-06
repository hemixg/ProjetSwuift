//
//  ProfilColoredFaceRow.swift
//  ProfileImages
//
//  Created by apprenant53 on 05/05/2023.
//

import SwiftUI

struct ProfilColoredFaceRow: View {
    
    @State private var isLiked = false
    @State private var addFriend = false
    
    var profil: Profil

    var body: some View {
        VStack(spacing: 2) {
            Image(profil.avatar)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
            HStack {
                Button(action: {
                    addFriend.toggle()
                }) {
                    Image(systemName: addFriend ? "person.badge.plus.fill" : "person.badge.plus")
                } .font(.title)
                    .padding(.leading)
                Spacer()
                Text(profil.pseudo)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Button(action: {
                    isLiked.toggle()
                }) {
                    Image(systemName: isLiked ? "hand.thumbsup.fill" : "hand.thumbsup")
                }
                .font(.title)
                .alignmentGuide(.top) { d in d[.bottom]}
                .padding(.trailing)
                }
                Text(profil.city)
                    .font(.system(size: 15))
                    .fontWeight(.light)
                Text(profil.sport)
                    .font(.system(size: 13))
                    .fontWeight(.light)
                Text(profil.description)
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                    .padding()
            VStack {
                Text("Nos Amis en Commun")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                Image(profil.avatarAmi)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
            }
            }
            
        }
    }


struct ProfilColoredFaceRow_Previews: PreviewProvider {
    static var previews: some View {
        ProfilColoredFaceRow(profil: Profil(avatar: "avatarLaBossDeRoubaix", pseudo: "La Boss De Roubaix", city: "Roubaix, France", sport: "Tennis, Football, Natation", description: "Amateur de sports, cherche à pratiquer le Tennis , Football, et la natation", avatarAmi: "avatarLeBarbierDeSeville", avatarAmi2: "avatarLadyRunning", avatarAmi3: "avatarRPZGolfGang", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""))
    }
}
