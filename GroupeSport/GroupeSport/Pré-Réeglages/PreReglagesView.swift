//
//  PreReglagesView.swift
//  GroupeSport
//
//  Created by apprenant43 on 05/05/2023.
//

import SwiftUI

struct PreReglagesView: View {
    
    @State var distance = 0.0
    @Binding var showPrereglagesView: Bool
    @State var showPreReglagesMapDestination = false

    
    var sports: [Sport] = [
        Sport(icon: "", name: ""),
        Sport(icon: "", name: ""),
        Sport(icon: "", name: "")
    ]
    
    var body: some View {
            Form {
                Text("Mes préférences")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.vertical, 5)
                List(sports) {sport in SportSelectionPicker()}
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
                    PreReglagesDayPicker(jour: "")
                    PreReglagesAutreDispo()
                }
                    PrereglagesCovoituragePicker(car: "")
                
                HStack{
                    Spacer()
                    Button ("Valider") {
                        showPrereglagesView.toggle()        }
                    .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 20))
                    .font(.title2)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .fontWeight(.semibold)
                    
                }
                    }
            }
    }
    struct PreReglagesView_Previews: PreviewProvider {
    static var previews: some View {
        PreReglagesView(showPrereglagesView: .constant(false))
    }
}
