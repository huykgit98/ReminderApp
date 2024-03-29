//
//  ReminderToggleStyle.swift
//  MakeItSo
//
//  Created by Negan on 19/07/2023.
//

import SwiftUI

struct ReminderToggleStyle: ToggleStyle {
    private let onStyle: AnyShapeStyle = .init(.tint)
    private let offStyle: AnyShapeStyle = .init(.gray)

    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: configuration.isOn ? "largecircle.fill.circle" : "circle")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundStyle(configuration.isOn ? onStyle : offStyle)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            configuration.label
        }
    }
}

extension ToggleStyle where Self == ReminderToggleStyle {
    static var reminder: ReminderToggleStyle {
        ReminderToggleStyle()
    }
}

struct ReminderToggleStyle_Previews: PreviewProvider {
    struct Container: View {
        @State var isOn = false
        var body: some View {
            Toggle(isOn: $isOn) { Text("Hello") }
                .toggleStyle(.reminder)
        }
    }

    static var previews: some View {
        Container()
    }
}
