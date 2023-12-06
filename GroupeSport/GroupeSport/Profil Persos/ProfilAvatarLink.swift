//
//  ProfilAvatarLink.swift
//  GroupeSport
//
//  Created by apprenant43 on 12/05/2023.
//

import SwiftUI

struct ProfilAvatarLink: View {
    
    var profilsAmi: [Profil] = [
        Profil(avatar: "avatarLaBossDeRoubaix", pseudo: "Zelda Nadal", city: "Roubaix, France", sport: "Tennis, Football, Natation", description: "Amateur de sport cherche a pratiquer entre amis", avatarAmi: "avatarLeBarbierDeSeville", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""),
        Profil(avatar: "avatarLeBarbierDeSeville", pseudo: "Le Barbier De Seville", city: "Tourcoing, France", sport: "Tennis, Volleyball, Footing", description: "Sportif polyvalent cherche a améliorer ses performances et rencontrer de nouveaux partenaires", avatarAmi: "avatarLaBossDeRoubaix", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""),
        Profil(avatar: "avatarRafaelDoBrazil", pseudo: "Rafael Do Brazil", city: "Brazilia, Brazil", sport: "Tennis, Danse comptemporaine, Footing", description: "Amante de desportos à procura de praticar futebol e tenis com outros jogadores apaixonados", avatarAmi: "avatarLadyRunning", avatarAmi2: "avatarRPZGolgGang", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: "")
    ]
    var profilsSuggested: [Profil] = [
        Profil(avatar: "avatarLadyRunning", pseudo: "Lady Running", city: "Rio de Janeiro, Brazil", sport: "Beach Volley, Aquagym, Footing", description: "Amo beach volley, aquagym, corrida. Procurando companhejros para praticar juntos", avatarAmi: "avatarRafaelDoBrazil", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "a", suggestedAvatar2: "", suggestedAvatar3: ""),
        Profil(avatar: "avatarForceTantrique", pseudo: "Force Tantrique", city: "Marseille, France", sport: "Yoga, Krav'maga", description: "Passionnée par la pratique sportive cherche a s'entrainer régulièrement et à rencontrer des partenaires pour partager ses expériences", avatarAmi: "", avatarAmi2: "", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: ""),
        Profil(avatar: "avatarRPZGolfGang", pseudo: "RPZ Golf Gang", city: "Berck, France", sport: "Golf, Char à voile, Football", description: "Sportif polyvalent passionné cherche des partenaires pour des sortis sportives variées", avatarAmi: "avatarLeBarbierDeSeville", avatarAmi2: "avatarRafaelDoBrazil", avatarAmi3: "", suggestedAvatar1: "", suggestedAvatar2: "", suggestedAvatar3: "")
    ]
    
    var profil: Profil
    
    var body: some View {
            List(profilsAmi) {profilAmi in
                NavigationLink {
                    ProfilColoredFaceRow(profil: profilAmi) }
            label: {
                ProfilAmiList(profil: profilAmi)
            }
        }
    }
}
struct ProfilAvatarLink_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfilAvatarLink(profil: Profil(avatar: "avatarLaBossDeRoubaix", pseudo: "test", city: "test", sport: "test", description: "test", avatarAmi: "avatarLeBarbierDeSeville", avatarAmi2: "avatarLadyRunning", avatarAmi3: "avatarRafaelDoBrazil", suggestedAvatar1: "avatarRPZGolfGang", suggestedAvatar2: "avatarBelleFleur", suggestedAvatar3: "avatarForceTantrique"))
        }
    }
}
