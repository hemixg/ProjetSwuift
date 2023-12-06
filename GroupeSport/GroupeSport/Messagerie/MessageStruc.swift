//
//  MessageStruc.swift
//  GroupSportApp
//
//  Created by apprenant39 on 04/05/2023.
//

import Foundation

struct Message : Identifiable {
    var id = UUID()
    var avatar : String
    var pseudo : String
    var LastMessage : String
    var date : String
}
 
