//
//  AnnonceCommentStruct.swift
//  GroupeSport
//
//  Created by apprenant43 on 12/05/2023.
//

import Foundation

struct Comment: Identifiable {
    var id = UUID()
    var time: String
    var text: String
    var avatarReponse : String
    var nameReponse : String
}
