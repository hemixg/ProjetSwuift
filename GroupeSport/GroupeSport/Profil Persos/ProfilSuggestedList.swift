//
//  ProfilSuggestedList.swift
//  GroupeSport
//
//  Created by apprenant39 on 14/05/2023.
//

import SwiftUI

struct ProfilSuggestedList: View {
    
    var profil: Profil
    
    var body: some View {
            HStack {
                Image(profil.suggestedAvatar1)
                    .resizable()
                    .scaledToFill()
//                    .frame(maxWidth: 100,maxHeight: 100)
                    .clipShape(Circle())
                
                Image(profil.suggestedAvatar2)
                    .resizable()
                    .scaledToFill()
//                    .frame(maxWidth: 100,maxHeight: 100)
                    .clipShape(Circle())
                
                Image(profil.suggestedAvatar3)
                    .resizable()
                    .scaledToFill()
//                    .frame(maxWidth: 100,maxHeight: 100)
                    .clipShape(Circle())
        }
            .padding(.vertical, -25)
    }
}
struct ProfilSuggestedList_Previews: PreviewProvider {
    static var previews: some View {
        ProfilSuggestedList(profil: Profil(avatar: "", pseudo: "", city: "", sport: "", description: "", avatarAmi: "", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "avatarLaBossDeRoubaix", suggestedAvatar2: "avatarLeBarbierDeSeville", suggestedAvatar3: "avatarLadyRunning"))
    }
}
