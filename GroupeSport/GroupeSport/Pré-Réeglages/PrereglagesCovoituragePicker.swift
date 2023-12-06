//
//  PrereglagesCovoituragePicker.swift
//  GroupeSport
//
//  Created by apprenant43 on 07/05/2023.
//

import SwiftUI

struct PrereglagesCovoituragePicker: View, Identifiable {
    
    var id = UUID()
    var covoiturages = ["Je partage", "Je recherche", "Aucun"]
    @State var car: String
    
    var body: some View {
        HStack {
            Image(systemName: "car")
            Picker("Co-voiturages", selection: $car) {
                ForEach(covoiturages, id: \.self) { covoiturage in Text(covoiturage).tag(covoiturage)
                }
            }
        }
    }
}
struct PrereglagesCovoituragePicker_Previews: PreviewProvider {
    static var previews: some View {
        PrereglagesCovoituragePicker(car: "Co-voiturages")
    }
}
