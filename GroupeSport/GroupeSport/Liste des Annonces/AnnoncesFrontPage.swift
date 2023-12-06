//
//  AnnoncesFrontPage.swift
//  GroupeSport
//
//  Created by apprenant43 on 09/05/2023.
//

import SwiftUI

struct AnnoncesFrontPage: View {
    
    @State private var showPreReglagesView = true
    @State private var showFiltres = false
    @Binding var notif : Bool
    @Binding var participate : Bool
    
    var section = ["Aujourd'hui", "Demain", "Après demain"]
    
    var annonces1 = [
        Annonce(titreAnnonce: "Cherche partenaire de Tennis", timeAnnonce: "10h00", descriptionAnnonce: "Bonjour, je recherche un ou plusieurs participant pour une partie de Tennis tous niveaux acceptés", dateOfDay: "16/05", nameAvatar: "Zelda Nadal",icon: "tennis.racket", name: "Tennis", profil: Profil(avatar: "avatarLaBossDeRoubaix", pseudo: "Zelda Nadal", city: "Roubaix, France", sport: "Tennis, Football, Natation", description: "Amateur de sport cherche a pratiquer entre amis", avatarAmi: "avatarLeBarbierDeSeville", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""), comment: Comment(time: "10h00", text: "Bonjour, je suis très interessé", avatarReponse: "avatarLeBarbierDeSeville", nameReponse: "Le Barbier De Seville")),
        
        Annonce(titreAnnonce: "3 pessoas para um jogo", timeAnnonce: "14h00", descriptionAnnonce: "Eu estou procurando descobrir o basquete com jogadores iniciantes como eu.", dateOfDay: "16/05", nameAvatar: "LadyRunning",icon: "basketball.fill", name: "BasketBall", profil: Profil(avatar: "avatarLadyRunning", pseudo: "Lady Running", city: "Rio de Janeiro, Brazil", sport: "Beach Volley, Aquagym, Footing", description: "Amo beach volley, aquagym, corrida. Procurando companhejros para praticar juntos", avatarAmi: "avatarRafaelDoBrazil", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "a", suggestedAvatar2: "", suggestedAvatar3: ""), comment: Comment(time: "", text: "", avatarReponse: "", nameReponse: "")),
        
        Annonce(titreAnnonce: "Pret pour un 18 trous?", timeAnnonce: "16h00", descriptionAnnonce: "Une bonne matinée entre joueurs confirmés suivi d'un drink au country club", dateOfDay: "16/05", nameAvatar: "RPZ Golf Gang",icon: "figure.golf", name: "Golf", profil: Profil(avatar: "avatarRPZGolfGang", pseudo: "RPZ Golf Gang", city: "Berck, France", sport: "Golf, Char à voile, Football", description: "Sportif polyvalent passionné cherche des partenaires pour des sortis sportives variées", avatarAmi: "avatarLeBarbierDeSeville", avatarAmi2: "avatarRafaelDoBrazil", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""), comment: Comment(time: "", text: "", avatarReponse: "", nameReponse: ""))]
    
    var annonces2 = [
        Annonce(titreAnnonce: "Venez apprendre à vous défendre", timeAnnonce: "20h", descriptionAnnonce: "Si vous voulez apprendre les bases de l'auto défense je propose une initiation", dateOfDay: "17/05", nameAvatar: "Force Tantrique",icon: "figure.martial.arts", name: "Krav'Maga", profil: Profil(avatar: "avatarForceTantrique", pseudo: "Force Tantrique", city: "Marseille, France", sport: "Yoga, Krav'maga", description: "Passionnée par la pratique sportive cherche a s'entrainer régulièrement et à rencontrer des partenaires pour partager ses expériences", avatarAmi: "", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""), comment: Comment(time: "", text: "", avatarReponse: "", nameReponse: "")),
        
        Annonce(titreAnnonce: "Correr na floresta", timeAnnonce: "20h", descriptionAnnonce: "Encontro de corredores de todos os níveis na floresta amazônica", dateOfDay: "17/05", nameAvatar: "Rafael Do Brazil",icon: "figure.run", name: "Running", profil: Profil(avatar: "avatarRafaelDoBrazil", pseudo: "Rafael Do Brazil", city: "Brazilia, Brazil", sport: "Tennis, Danse comptemporaine, Footing", description: "Amante de desportos à procura de praticar futebol e tenis com outros jogadores apaixonados", avatarAmi: "avatarLadyRunning", avatarAmi2: "avatarRPZGolgGang", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""), comment: Comment(time: "", text: "", avatarReponse: "", nameReponse: ""))]
    
    var annonces3 = [
        Annonce(titreAnnonce: "Enchainons les longueurs", timeAnnonce: "9h00", descriptionAnnonce: "Une journée à la piscine pour enchainer les longueurs et s'entrainer dans la bonne humeur", dateOfDay: "17/05", nameAvatar: "Zelda Nadal",icon: "figure.pool.swim", name: "Natation", profil: Profil(avatar: "avatarLaBossDeRoubaix", pseudo: "Zelda Nadal", city: "Roubaix,France", sport: "Tennis, Football, Natation", description: "Amateur de sport cherche a pratiquer entre amis", avatarAmi: "avatarLeBarbierDeSeville", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""), comment: Comment(time: "", text: "", avatarReponse: "", nameReponse: "")),
        Annonce(titreAnnonce: "Un five après le boulot", timeAnnonce: "20h00", descriptionAnnonce: "Je cherche un moyen de me détendre en rencontrant de nouvelle personne, pourquoi pas un five?", dateOfDay: "18/05", nameAvatar: "BelleFleur",icon: "soccerball.circle.fill.inverse", name: "Football", profil: Profil(avatar: "avatarBelleFleur", pseudo: "Belle Fleur", city: "Wasquehal, France", sport: "Gymnastique, danse comptemporraine, Football", description: "Toujours prête a découvrir de nouveaux sports", avatarAmi: "avatarLeBarbierDeSeville", avatarAmi2: "avatarLaBossDeRoubaix", avatarAmi3: "avatarRafaelDoBrazil", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""), comment: Comment(time: "", text: "", avatarReponse: "", nameReponse: ""))]
    
    var body: some View {
        NavigationView{
            
                List {
                    Section(header: Text(section[0])) {
                        ForEach(annonces1) { element in
                            NavigationLink {
                                AnnonceDetailView(annonce: element, notif: $notif, participate: $participate)
                            } label: {
                                AnnoncesFrontPageRaw(annonce: element)
                            }
                        }
                    }
                    Spacer()
                    Section(header: Text(section[1])) {
                        ForEach(annonces2) { element in
                            NavigationLink {
                                AnnonceDetailView(annonce: element, notif: $notif, participate: $participate)
                                
                            } label: {
                                AnnoncesFrontPageRaw(annonce: element)
                            }
                        }
                    }
                    Spacer()
                    Section(header: Text(section[2])) {
                        ForEach(annonces3) { element in
                            NavigationLink {
                                AnnonceDetailView(annonce: element, notif: $notif, participate: $participate)
                                
                            } label: {
                                AnnoncesFrontPageRaw(annonce: element)
                            }
                        }
                    }
                }
                .listStyle(PlainListStyle())
                .navigationTitle("SporCo")
                .sheet(isPresented: $showFiltres) {
                    AnnoncesFiltres(showFiltres: self.$showFiltres)
                }
                .navigationBarItems(trailing: Button(action: {
                    self.showFiltres = true
                }){
                    Text("Filtres")
                        .foregroundColor(.black)
                })
        }
        .sheet(isPresented: $showPreReglagesView) {
            PreReglagesView(showPrereglagesView: self.$showPreReglagesView)
        }

    }
}
struct annonceListView_Previews: PreviewProvider {
    static var previews: some View {
        AnnoncesFrontPage(notif: .constant(false), participate: .constant(false))
    }
}

