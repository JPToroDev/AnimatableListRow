// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

struct AnimatableListRow<Content: View>: View {
    
    var animation: Animation?
    @ViewBuilder var content: () -> Content
    
    @State private var height: CGFloat = 0
    @State private var hasAppeared: Bool = false
    
    var body: some View {
        AnimatableListRowContent(height: height) {
            content()
                .onGeometryChange(for: CGFloat.self) { proxy in
                    proxy.size.height
                } action: { height in
                    self.height = height
                }
        }
        .animation(hasAppeared ? animation : nil, value: height)
        .task {
            try? await Task.sleep(for: .seconds(0.25))
            hasAppeared = true
        }
    }
}
