//
//  AnnoncesFiltres.swift
//  GroupeSport
//
//  Created by apprenant43 on 07/05/2023.
//

import SwiftUI

struct AnnoncesFiltres: View {
    
    @State var adress = ""
    @State var distance = 0.0
    @State var dispoHour = Date.now
    @State var showLinkTestView = false
    @State var showPreReglagesMapDestination = false
    @Binding var showFiltres : Bool


    
    var sports: [Sport] = [
        Sport(icon: "medal.fill", name: "Choisir sport 1"),
        Sport(icon: "medal.fill", name: "Choisir sport 2"),
        Sport(icon: "medal.fill", name: "Choisir sport 3")
    ]
    
    var body: some View {
     
            Form {
               SportSelectionPicker()
                Section{
                    HStack{
                        Image(systemName: "globe.europe.africa")
                        Button(action: {self.showPreReglagesMapDestination = true}) {
                            Text("Choisir mon adresse sur Maps >")
                                .foregroundColor(Color.black)
                        }
                        .sheet(isPresented: $showPreReglagesMapDestination){
                            PreReglagesMapDestination(showPrereglagesMapDestination: self.$showPreReglagesMapDestination)
                        }
                    }
                    Slider(value: $distance, in: 0...50)
                    Text("Dans un rayon autour de \(String(format: "%.2f", distance)) km")
                }
                Section {
                    HStack {
                        Image(systemName: "calendar")
                        DatePicker("Dispo", selection: $dispoHour, in: ...Date.now, displayedComponents: .date)
                    }
                    PreReglagesHeure()
                }
                    PrereglagesCovoituragePicker(car: "")
                    HStack{

                        Button ("Mes préférences") {
                            showFiltres.toggle()        }
                        .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                        .font(.title2)
                        .background(.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .fontWeight(.semibold)
                        Spacer()
                        Button ("Valider") {
                            showFiltres = false       }
                        .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 20))
                        .font(.title2)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .fontWeight(.semibold)

                    }
                    .navigationTitle("Filtres")
            }
      
    }
}
    

struct AnnoncesFiltres_Previews: PreviewProvider {
    static var previews: some View {
        AnnoncesFiltres(showFiltres: .constant(false))
    }
}
