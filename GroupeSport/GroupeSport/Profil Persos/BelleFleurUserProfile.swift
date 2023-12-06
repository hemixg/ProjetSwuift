//
//  BelleFleurUserProfile.swift
//  GroupeSport
//
//  Created by apprenant53 on 09/05/2023.
//

import SwiftUI

struct BelleFleurUserProfile: View {
    
    @State private var showModalViewPage = false
    @State var profil: Profil
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(spacing: 10) {
                    Image(profil.avatar)
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 275)
                        .padding(-50)
                    
                    Text(profil.pseudo)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .aspectRatio(contentMode: .fit)
                    
                    Text(profil.city)
                        .font(.system(size: 17))
                        .fontWeight(.medium)
                    
                    Text(profil.sport)
                        .font(.system(size: 16))
                        .fontWeight(.light)
                    
                    Text(profil.description)
                        .font(.system(size: 16))
                        .fontWeight(.light)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.center)
                    
                    Text("Mes Amis")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    HStack{
                        ProfilAmiList(profil: profil)
                    }
                    .padding(10)
                    
                    Text("Suggestion d'Amis")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                    
                    HStack{
                        ProfilSuggestedList(profil: profil)
                    }
                    .padding(10)

                }
                .navigationBarTitle("Mon Profil")
                .navigationBarItems(trailing:
                                        Button(action: {
                    self.showModalViewPage = true
                }) {
                    Text("Editer")
                }
                    .sheet(isPresented: $showModalViewPage) {
                        EditingProfileInfo(profil: profil)
                    }
                )
            }

        }

    }

    
}

struct BelleFleurUserProfile_Previews: PreviewProvider {
    static var previews: some View {
        BelleFleurUserProfile(profil: Profil(avatar: "avatarBelleFleur", pseudo: "Belle Fleur", city: "Wasquehal, France", sport: "Gymnastique, danse contemporaine, football", description: "Toujours prête a découvrir de nouveaux sport", avatarAmi: "avatarLeBarbierDeSeville", avatarAmi2: "avatarLaBossDeRoubaix", avatarAmi3: "avatarRafaelDoBrazil", suggestedAvatar1: "avatarLadyRunning", suggestedAvatar2: "avatarForceTantrique", suggestedAvatar3: "avatarRPZGolfGang"))
    }
}
