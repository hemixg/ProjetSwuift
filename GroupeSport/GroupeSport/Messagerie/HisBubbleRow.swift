//
//  HisBubbleRow.swift
//  GroupSportApp
//
//  Created by apprenant39 on 09/05/2023.
//

import SwiftUI

struct HisBubbleRow: View {
    var hisBubble : HisBubble
    var body: some View {
        HStack {
            Text(hisBubble.message)
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(Color(hue: 0.574, saturation: 0.043, brightness: 0.889))
                .foregroundColor(.black)
                .cornerRadius(15)
            Spacer()
        }    }
}

struct HisBubbleRow_Previews: PreviewProvider {
    static var previews: some View {
        HisBubbleRow(hisBubble: HisBubble(message: "Let's go"))
    }
}
