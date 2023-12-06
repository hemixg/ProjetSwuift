//
//  ProfilStruc.swift
//  GroupSportApp
//
//  Created by apprenant39 on 04/05/2023.
//

import Foundation

struct Profil : Identifiable {
    var id = UUID()
    var avatar : String
    var pseudo : String
    var city : String
    var sport : String
    var description : String
    var avatarAmi: String
    var avatarAmi2: String
    var avatarAmi3: String
    var suggestedAvatar1: String
    var suggestedAvatar2: String
    var suggestedAvatar3: String
}
