//
//  SportSelectionRaw.swift
//  GroupeSport
//
//  Created by apprenant43 on 05/05/2023.
//

import SwiftUI

struct SportSelectionRaw: View {
    
    var sport: Sport
    
    var body: some View {
        HStack{
            HStack{
                Image(systemName: sport.icon)
                Text(sport.name)
            }
        }
    }
}

struct SportSelectionRaw_Previews: PreviewProvider {
    static var previews: some View {
        SportSelectionRaw(sport: Sport(icon: "heart", name: "Sport 1"))
    }
}
