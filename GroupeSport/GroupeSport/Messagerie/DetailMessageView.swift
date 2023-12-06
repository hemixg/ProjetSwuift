//
//  DetailMessageView.swift
//  GroupSportApp
//
//  Created by apprenant39 on 05/05/2023.
//

import SwiftUI

struct DetailMessageView: View {
    var myBubble : MyBubble
    var hisBubble : HisBubble
    @State var newMessage  = ""
    var message : Message
    var body: some View {
        VStack {
            Spacer()
            MyBubbleRow(myBubble: MyBubble(message: "Hello"))
            HisBubbleRow(hisBubble: HisBubble(message: "Salut comment ca va?"))
            TextField("Hello...", text: $newMessage)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.default)
        }
        .padding()

    }
    }

struct DetailMessageView_Previews: PreviewProvider {
    static var previews: some View {
        DetailMessageView(myBubble: MyBubble(message: ""), hisBubble: HisBubble(message: ""), message: Message(avatar: "", pseudo: "truc", LastMessage: "truc", date: "truc"))
    }
}
