
//  SportSelectionPicker.swift
//  GroupeSport
//
//  Created by apprenant43 on 05/05/2023.


import SwiftUI

struct SportSelectionPicker: View, Identifiable {
    
    var id = UUID()
    
    var sports : [Sport] = [
        Sport(icon: "figure.walk", name: "Marche"),
        Sport(icon: "figure.badminton", name: "Tennis"),
        Sport(icon: "figure.outdoor.cycle", name: "Cyclisme"),
        Sport(icon: "figure.soccer", name: "Football"),
        Sport(icon: "figure.basketball", name: "Basket"),
        Sport(icon: "figure.golf", name: "Golf")
    ]
    
    @State var sportsSelected = Sport(icon: "", name: "")
    
    var body: some View {
        HStack {
            Image(systemName: "medal.fill")
            Picker("Choisir un sport", selection: $sportsSelected) {
                ForEach(sports) { sport in
                    SportSelectionRaw(sport: sport)
                        .tag(sport)
                }
            }
        }
    }
}
struct SportSelectionPicker_Previews: PreviewProvider {
    static var previews: some View {
            SportSelectionPicker()
    }
}
