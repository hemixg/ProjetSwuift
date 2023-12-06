//
//  CalendarView.swift
//  GroupeSport
//
//  Created by apprenant43 on 12/05/2023.
//

import SwiftUI

struct CalendarView: View {
    @State var selectedDate = Date()
    @Binding var notif : Bool

            var body: some View {
                NavigationView {
                    VStack {
                        FormattedDate(selectedDate: selectedDate, omitTime: true)
                        Divider().frame(height: 1)
                        DatePicker("Select Date", selection: $selectedDate, displayedComponents: .date)
                            .datePickerStyle(.graphical)
                        Divider()
                        if notif {
                            HStack {
                                Image(systemName: "tennis.racket")
                                Text("Tennis 10h avec")
                                Text("Zelda Nadal")
                                    .fontWeight(.semibold)
                                
                                Spacer()
                            }
                            .padding()
                            .font(.callout)
                        }
                    }
                    .navigationBarTitle("Mon calendrier")
                }
                }
                }
struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView( notif: .constant(true))
    }
}
