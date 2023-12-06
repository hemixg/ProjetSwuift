//
//  MyBubbleRow.swift
//  GroupSportApp
//
//  Created by apprenant39 on 09/05/2023.
//

import SwiftUI

struct MyBubbleRow: View {
    var myBubble : MyBubble
    var body: some View {
        HStack {
            Spacer()
            Text(myBubble.message)
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(15)

        }    }
}

struct MyBubbleRow_Previews: PreviewProvider {
    static var previews: some View {
        MyBubbleRow(myBubble: MyBubble(message: "Hello"))
    }
}
