//
//  AvatarChangeView.swift
//  GroupeSport
//
//  Created by apprenant39 on 13/05/2023.
//

import SwiftUI

import SwiftUI

struct avatarChangeView: View {
    @State var avatarChangingField : UIImage? = nil
    var body: some View {
                VStack {
                    if let image = avatarChangingField {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                        
                    } else {
                        Image(systemName: "camera.fill")
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                    
                    Button(action: {
                    }) {
                        Text("Choisissez une nouvelle avatar")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .padding()
                    
                    Button(action: {
                    }) {
                        Text("Sauvegarder")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .padding()
                }
                .navigationTitle("Change Avatar")
            }
        }

struct avatarChangeView_Previews: PreviewProvider {
    static var previews: some View {
        avatarChangeView()
    }
}
