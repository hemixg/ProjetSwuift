//
//  MessageBeginNewDiscution.swift
//  GroupeSport
//
//  Created by apprenant43 on 11/05/2023.
//

import SwiftUI



struct MessageBeginNewDiscution: View {
    @State var newMessage  = ""
    var body: some View {
        VStack {
            HStack {
                Text("Invite des amis à discuter")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(10)

            Spacer()
                
        }
            TextField("Saisissez un nom", text: $newMessage)
                .padding(10)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.default)
            
            HStack {
                Text("AJOUTER DES MEMBRES")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding(10)
            Spacer()
                
        }
            let avatars: [Profil] = [
                Profil(avatar: "avatarLeBarbierDeSeville", pseudo: "Le Barbier de Seville", city: "", sport: "", description: "", avatarAmi: "", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""),
                Profil(avatar: "avatarForceTantrique", pseudo: "ForceTantrique", city: "", sport: "", description: "", avatarAmi: "", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""),
                Profil(avatar: "avatarLaBossDeRoubaix", pseudo: "Zelda Nadal", city: "", sport: "", description: "", avatarAmi: "", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""),
                Profil(avatar: "avatarRafaelDoBrazil", pseudo: "Rafael do brazil", city: "", sport: "", description: "", avatarAmi: "", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: "")]
            
                List(avatars) { element in
                    AvatarRaw(avatarName: element)
                        .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
            }
    }
}
    

struct MessageBeginNewDiscution_Previews: PreviewProvider {
    static var previews: some View {
        MessageBeginNewDiscution()
    }
}
