//
//  NouveauMessageView.swift
//  GroupeSport
//
//  Created by apprenant43 on 09/05/2023.
//

import SwiftUI

struct NouveauMessageView: View {
    
    @State var titreAnnonce: String = ""
    @State var descriptionAnnonce: String = ""
    @State var dispoHour = Date.now
    @State var showPreReglagesMapDestination = false

    
    var body: some View {
        NavigationView {
            Form{
                Section {
                    TextField("Titre de l'annonce", text: $titreAnnonce)
                        .keyboardType(.default)
                }
                Section {
                    TextField("Description de l'annonce", text: $descriptionAnnonce, axis: .vertical)
                        .lineLimit(5, reservesSpace: true)
                        .keyboardType(.default)
                }
                Section {
                    SportSelectionPicker()
                    HStack{
                        Image(systemName: "globe.europe.africa")
                        Button(action: {self.showPreReglagesMapDestination = true}) {
                            Text("Choisir mon adresse sur Maps >")
                                .sheet(isPresented: $showPreReglagesMapDestination){
                                    PreReglagesMapDestination(showPrereglagesMapDestination: self.$showPreReglagesMapDestination)
                                }
                        }
                    }
                }
                Section {
                    HStack {
                        Image(systemName: "calendar")
                        DatePicker("Date", selection: $dispoHour, in: Date.now..., displayedComponents: .date)
                    }
                    .keyboardType(.numberPad)
                    PreReglagesHeure()
                }
                HStack{
                    Spacer()
                    BigButtonRaw(bigButton: BigButton(title: "Valider", buttonColor: .blue))
                }
            }
            .navigationBarTitle("Nouvelle annonce")

        }

        }
    
    }

struct NouveauMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NouveauMessageView()
    }
}
