//
//  MessageView.swift
//  GroupSportApp
//
//  Created by apprenant39 on 05/05/2023.
//

import SwiftUI

struct MessageView: View {
    @State var showAddView = false
    var messages : [Message] = [Message(avatar: "avatarRafaelDoBrazil", pseudo: "Rafael do brazil", LastMessage: "", date: "10:45"), Message(avatar: "avatarLaBossDeRoubaix", pseudo: "Zelda Nadal", LastMessage: "Hello frerot comment ca va? C'etait top le foot hier ! On se refait ca à l'occasion! D'ailleurs la semaine prochaine je suis OP", date: "mar."), Message(avatar: "avatarLeBarbierDeSeville", pseudo: "Le Barbier de Seville", LastMessage: "Super moment! vivement la prochaine", date: "mer"), Message(avatar: "avatarForceTantrique", pseudo: "forceTantrique", LastMessage: "Vivement que tu revienne a Marseille!", date: "ven.")]
    var body: some View {
        NavigationView {
            ZStack {
                List(messages) { message in
                    NavigationLink {
                        chatView(annonce: Annonce(titreAnnonce: "", timeAnnonce: "", descriptionAnnonce: "", dateOfDay: "", nameAvatar: "", icon: "", name: "", profil: Profil(avatar: "", pseudo: "", city: "", sport: "", description: "", avatarAmi: "", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""), comment: Comment(time: "", text: "", avatarReponse: "", nameReponse: "")))
                    }  label: {
                            MessageRow(message: message)
                    }
                    .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .navigationTitle("Messages privés")
                }
                VStack {
                    Spacer()
                    HStack{
                        Spacer()
                        Button(action: {self.showAddView = true}) {
                            Text("Nouvelle discussion")
                        }
                        .foregroundColor(.white)
                        .sheet(isPresented: $showAddView){
                            MessageBeginNewDiscution()
                        }
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                    }
                    .padding()
                }
            }
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
