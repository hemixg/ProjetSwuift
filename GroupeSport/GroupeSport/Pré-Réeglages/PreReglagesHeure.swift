//
//  PreReglagesHeure.swift
//  GroupeSport
//
//  Created by apprenant43 on 09/05/2023.
//

import SwiftUI

struct PreReglagesHeure: View {
    @State var dispoHour = Date.now
    @State var dispoHour2 = Date.now
    
    var body: some View {
        HStack {
            Image(systemName: "clock.fill")
                .foregroundColor(.black)
            DatePicker("De", selection: $dispoHour, displayedComponents: .hourAndMinute)
            DatePicker("A", selection: $dispoHour2, displayedComponents: .hourAndMinute)
        }
    }
}

struct PreReglagesHeure_Previews: PreviewProvider {
    static var previews: some View {
        PreReglagesHeure()
    }
}
