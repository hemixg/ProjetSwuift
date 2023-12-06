//
//  EditingProfileInfo.swift
//  GroupeSport
//
//  Created by apprenant53 on 12/05/2023.
//

import SwiftUI

struct EditingProfileInfo: View {
    @State var profil: Profil
    @State var pseudoChangingText = ""
    @State var cityChangingText = ""
    @State var sportChangingText = ""
    @State var descriptionChangingText = ""
    @State var adresseChangingText = ""
    @State var changeAvatar = false

       var body: some View {
           NavigationView {
               VStack(spacing: 0) {
                   Text("Editer mon profil")
                       .font(.largeTitle)
                       .fontWeight(.bold)
                   VStack {
                       Image(profil.avatar)
                           .resizable()
                           .scaledToFit()
                           .clipShape(Circle())
                           .frame(width: 300)
                           .overlay(Button(action: {self.changeAvatar = true})
                                    {
                               Image(systemName: "camera.fill")
                           } .sheet(isPresented: $changeAvatar) {
                               avatarChangeView()
                           }
                               .padding(10)
                               .fontWeight(.bold)
                               .foregroundColor(.white)
                               .background(Color.blue)
                               .clipShape(RoundedRectangle(cornerRadius: 10))
                               .offset(x: 120, y: -80)
                           )
                   }
               
               
                   VStack(alignment: .leading, spacing: 10) {
                       Text("")
                           .font(.headline)
                           .fontWeight(.bold)
                       TextField("Changer mon pseudo", text: $pseudoChangingText)
                           .cornerRadius(20)
                           .padding(8)
                           .keyboardType(.default)
                       
                       TextField("Changer mon adresse", text: $adresseChangingText)
                           .cornerRadius(20)
                           .padding(8)
                           .keyboardType(.default)
                      
                       TextField("Editer mes sports", text: $sportChangingText)
                           .cornerRadius(20)
                           .padding(8)
                           .keyboardType(.default)
                      
                       TextField("Editer ma description", text: $descriptionChangingText)
                           .cornerRadius(20)
                           .padding(8)
                           .keyboardType(.default)
               }
                   Spacer()
                   
               }
           }
       }
   }

struct EditingProfileInfo_Previews: PreviewProvider {
    static var previews: some View {
        EditingProfileInfo(profil: Profil(avatar: "avatarBelleFleur", pseudo: "Belle Fleur", city: "", sport: "", description: "", avatarAmi: "", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""))
    }
}
