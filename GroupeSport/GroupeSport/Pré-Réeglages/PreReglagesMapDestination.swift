//
//  PreReglagesMapDestination.swift
//  GroupeSport
//
//  Created by apprenant43 on 09/05/2023.
//

import SwiftUI
import MapKit

struct PreReglagesMapDestination: View {
    
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.269827, longitude: 5.3958873), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    @State var recherche = ""
    @Binding var showPrereglagesMapDestination: Bool

    
    
    var body: some View {

            Map(coordinateRegion: $region, showsUserLocation: true)
                .edgesIgnoringSafeArea(.bottom)
                .padding(.top, 10)
                .navigationTitle("Localisation")
                .searchable(text: $recherche)
                .keyboardType(.default)
    }
}
struct PreReglagesMapDestination_Previews: PreviewProvider {
    static var previews: some View {
        PreReglagesMapDestination( showPrereglagesMapDestination: .constant(false))
    }
}
