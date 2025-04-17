//
//  ButtonMenuApp.swift
//  ButtonMenu
//
//  Created by Amish on 16/04/25.
//

import SwiftUI

@main
struct ButtonMenuApp: App {
    @State var darkMode: Bool = false
    var body: some Scene {
        WindowGroup {
            Toggle("Dark mode", isOn: $darkMode).padding(10)
                .onTapGesture {
                    darkMode.toggle()
                }
            ModalTaskSelector()
                .preferredColorScheme(darkMode ? .dark : .light)
                    .animation(.easeInOut, value: darkMode)
        }
    }
}
