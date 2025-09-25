//
// Example.swift
// AnimatableListRow
// https://github.com/JPToroDev/AnimatableListRow
// See LICENSE for license information.
// © 2024 J.P. Toro
//

import SwiftUI

struct ContentView: View {
    @State private var isExpanded: Bool = false

    var body: some View {
        List {
            Button("Is Expanded") {
                withAnimation {
                    isExpanded.toggle()
                }
            }
            Section {
                VStack(alignment: .leading) {
                    Text("Steve Jobs")
                    Text("Steve Wozniak")
                    Text("Tim Cook")
                    if isExpanded {
                        Text("Jony Ive")
                        Text("Craig Federighi")
                        Text("Phil Schiller")
                        Text("Eddy Cue")
                        Text("Angela Ahrendts")
                    }
                }
                .animatableListRow()
                .frame(maxWidth: .infinity, alignment: .leading)
                .contentShape(.rect)
                .onTapGesture {
                    withAnimation {
                        isExpanded.toggle()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
