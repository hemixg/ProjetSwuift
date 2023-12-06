import SwiftUI

struct MessageChat: Identifiable {
    let id = UUID()
    let content: String
    let isUser: Bool
}
struct chatView: View {
    
    @State var messages: [MessageChat] = []
    @State var newMessage: String = ""
    @State var reponseDelai: Double = 1.5
    @State var listeAnswer = 0
    var annonce: Annonce
    func sendMessage() {
        let message = MessageChat(content: newMessage, isUser: true)
        messages.append(message)
        
        newMessage = ""
        DispatchQueue.main.asyncAfter(deadline: .now() + reponseDelai) {
            let reponse = MessageChat(content: self.getAnswer(), isUser: false)
            messages.append(reponse)
        }
    }
    func getAnswer() -> String {
            let listAnswer = reponsesAutomatiques[listeAnswer]
            listeAnswer = (listeAnswer + 1) % reponsesAutomatiques.count
            return listAnswer
        }
        let reponsesAutomatiques = [
            "salut, ca va et toi ?",
            "Oui pourquoi pas, à quelle heure ?",
            "Oui, tu à besoin que je ramène quelque chose en particulier ?",
            "Alors, parfait ! à se soir, et ne soit pas en retard !",
        ]
    var body: some View {
        VStack {
            ScrollView {
               VStack(alignment: .leading, spacing: 10) {
                    ForEach(messages) { message in
                        if message.isUser {
                            UserMessageView(content: message.content)
                        } else {
                            autoReplyMessageView(content: message.content)
                        }
                    }
                }
               .padding()
            }
            
            HStack {
                TextField ("écrivez votre message", text: $newMessage)
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button(action: sendMessage) {
                    Text("envoyer")
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
            .background(.gray.opacity(0.2))
        }
        .navigationTitle("Messages privés")
    }
}

struct UserMessageView: View {
    var content: String
    var body: some View {
        HStack {
            Spacer()
            Text(content)
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(30)
        }
    }
}
struct autoReplyMessageView: View {
    var content: String
    var body: some View {
        HStack {
            Text(content)
                .padding()
                .background(.gray)
                .foregroundColor(.white)
                .cornerRadius(30)
            Spacer()
        }
    }
}

struct tontentView: View {
    var body: some View {
        NavigationView {
            chatView(annonce: Annonce(titreAnnonce: "", timeAnnonce: "", descriptionAnnonce: "", dateOfDay: "", nameAvatar: "exemple", icon: "", name: "", profil: Profil(avatar: "", pseudo: "", city: "", sport: "", description: "", avatarAmi: "", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""), comment: Comment(time: "", text: "", avatarReponse: "", nameReponse: "")))
        }
    }
}

struct tontentView_Previews: PreviewProvider {
    static var previews: some View {
        tontentView()
    }
}
