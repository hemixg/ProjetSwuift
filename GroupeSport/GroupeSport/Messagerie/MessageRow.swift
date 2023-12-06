//
//  MessageRow.swift
//  GroupSportApp
//
//  Created by apprenant39 on 05/05/2023.
//

import SwiftUI

struct MessageRow: View {
    var message : Message
    var body: some View {
        HStack {
            Image(message.avatar)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(height: 90)
            VStack(alignment: .leading) {
                HStack{
                    Text(message.pseudo)
                        .fontWeight(.semibold)
                        .padding(.bottom, 1)
                    Spacer()
                    Text(message.date)
                        .font(.caption)
                        .foregroundColor(Color.gray)
                        .padding(.horizontal)
                }
                Text(message.LastMessage)
                    .font(.caption)
                    .foregroundColor(Color.gray)
                    .lineLimit(2)
            }
            .padding(.horizontal, 5)
        }

    }
}

struct MessageRow_Previews: PreviewProvider {
    static var previews: some View {
        MessageRow(message: Message(avatar: "avatarRafaelDoBrazil", pseudo: "Rafael do brazil", LastMessage: "Hello frerot comment ca va? C'etait top le foot hier ! On se refait ca à l' ", date: "10:45"))
    }
}
