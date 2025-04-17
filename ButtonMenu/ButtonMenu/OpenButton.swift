//
//  OpenButton.swift
//  ButtonMenu
//
//  Created by Amish on 16/04/25.
//

import SwiftUI
struct OpenButton : View {
    @Binding var show: Bool
    var body: some View {
        Image(systemName: "plus")
            .foregroundColor(.primary)
            .font(.largeTitle)
            .rotationEffect(.degrees(show ? 45 : 0))
            .padding(20)
            .background(
                Circle()
                    .modeBasedCardStyle(cornerRadius: 60)
            )
            .offset(y: show ? 140 : 0)
            .onTapGesture {
                withAnimation(.spring) {
                    self.show.toggle()
                }
            }
    }
}

//#Preview {
//    OpenButton()
//}
