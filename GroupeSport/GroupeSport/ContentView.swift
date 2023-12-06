//
//  ContentView.swift
//  GroupeSport
//
//  Created by apprenant43 on 05/05/2023.
//

import SwiftUI


struct ContentView: View {
    @State var notif = false
    @State var participate = false

    var body: some View {
        TabView{
            AnnoncesFrontPage(notif: $notif, participate: $participate)
                .tabItem {
                    Image(systemName: "list.bullet.rectangle.fill")
                    Text("Annonces")
                }
            NouveauMessageView()
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                    Text("Créer")
                }
            MessageView()
                .tabItem {
                    Image(systemName: "message.circle")
                    Text("Messagerie")
                }
            CalendarView( notif: $notif)
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calendrier")
                }
            BelleFleurUserProfile(profil: Profil(avatar: "avatarBelleFleur", pseudo: "Belle Fleur", city: "Wasquehal, France", sport: "Gymnastique, danse contemporaine, football", description: "Toujours prête a découvrir de nouveaux sport", avatarAmi: "avatarLeBarbierDeSeville", avatarAmi2: "avatarLaBossDeRoubaix", avatarAmi3: "avatarRafaelDoBrazil", suggestedAvatar1: "avatarLadyRunning", suggestedAvatar2: "avatarForceTantrique", suggestedAvatar3: "avatarRPZGolfGang"))
                .tabItem{
                    Image(systemName: "person.circle.fill")
                    Text("Profil")
                }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
