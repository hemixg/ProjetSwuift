//
//  ListeAnonnceStruct.swift
//  GroupeSport
//
//  Created by apprenant62 on 04/05/2023.
//

import Foundation

struct Annonce : Identifiable {
    var id = UUID()
    var titreAnnonce: String
    var timeAnnonce: String
    var descriptionAnnonce: String
    var dateOfDay: String
    var nameAvatar: String
    var icon : String
    var name : String
    var profil : Profil
    var comment : Comment
}
