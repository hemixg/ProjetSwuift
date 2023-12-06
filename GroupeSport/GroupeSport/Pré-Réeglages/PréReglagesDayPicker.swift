//
//  PréReglagesDayPicker.swift
//  GroupeSport
//
//  Created by apprenant43 on 10/05/2023.
//

import SwiftUI

struct PreReglagesDayPicker: View, Identifiable {
    
    var id = UUID()
    var daysOfDisponibility = ["Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi", "Dimanche"]
    @State var jour: String
    
    var body: some View {
        VStack{
        HStack {
            Image(systemName: "calendar")
            Picker("Disponibilités", selection: $jour) {
                ForEach(daysOfDisponibility, id: \.self) { dayOfDisponibility in Text(dayOfDisponibility).tag(dayOfDisponibility)
                    }
                }
            }
            PreReglagesHeure()
        }
    }
}

struct PreReglagesDayPicker_Previews: PreviewProvider {
    static var previews: some View {
        PreReglagesDayPicker(jour: "Lundi")
    }
}
