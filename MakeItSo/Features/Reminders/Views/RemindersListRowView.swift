//
//  RemindersListRowView.swift
//  MakeItSo
//
//  Created by Negan on 19/07/2023.
//

import SwiftUI

struct RemindersListRowView: View {
    @Binding
    var reminder: Reminder

    var body: some View {
        HStack {
            Toggle(isOn: $reminder.isCompleted) { /* empty on purpose */ }
                .toggleStyle(.reminder)
            
            Text(reminder.title)
        }
    }
}

struct RemindersListRowView_Previews: PreviewProvider {
    struct Container: View {
        @State var reminder = Reminder.samples[0]
        var body: some View {
            List {
                RemindersListRowView(reminder: $reminder)
            }
        }
    }

    static var previews: some View {
        Container()
    }
}
