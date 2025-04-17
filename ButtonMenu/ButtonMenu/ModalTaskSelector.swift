//
//  ModalTaskSelector.swift
//  ButtonMenu
//
//  Created by Amish on 16/04/25.
//

import SwiftUI
struct ModalTaskSelector : View {
    @State var show = false
    let options = [
        TaskOption(icon: "checklist", title: "Task", subtitle: "A one-time task to complete", action: {}),
        TaskOption(icon: "folder", title: "Project", subtitle: "A long-term collections of tasks", action: {}),
        TaskOption(icon: "person.2", title: "Team", subtitle: "A collaborative workspace", action: {})
    ]
    var body: some View {
        
        ZStack {
            Color.gray.opacity(0.4).ignoresSafeArea()
            ZStack {
                ZStack {
                    HStack(spacing:18) {
                        ForEach(options) { option in
                            TaskCardView(option: option)
                                .onTapGesture {
                                    withAnimation(.spring) {
                                        show.toggle()
                                    }
                                }
                        }
                    }
                    .opacity(show ? 1 : 0)
                    .scaleEffect(show ? 1 : 0)
                }
                .frame(height: show ? 130 : 0)
                .frame(maxWidth: show ? .infinity : 0)
                .padding(show ? 16 : 0)
                .background {
                    RoundedRectangle(cornerRadius: 18)
                        .modeBasedCardStyle()
                }
                OpenButton(show: $show)
            }.scaleEffect(0.8)
        }
    }
}

#Preview {
    ModalTaskSelector()
}
