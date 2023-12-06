//
//  PreReglagesAutreDispo.swift
//  GroupeSport
//
//  Created by apprenant43 on 10/05/2023.
//

import SwiftUI

struct PreReglagesAutreDispo: View {
    
    @State var newPicker = false
    
    var body: some View {
        if newPicker {
            PreReglagesDayPicker(jour: "")
        }
        Button {
            newPicker.toggle()
        } label: {
            HStack{
                Spacer()
                SmallButtonRaw(smallButton: SmallButton(title: "Autre dispo", buttonColor: .blue))
            }
        }
    }
}

struct PreReglagesAutreDispo_Previews: PreviewProvider {
    static var previews: some View {
        PreReglagesAutreDispo()
    }
}
