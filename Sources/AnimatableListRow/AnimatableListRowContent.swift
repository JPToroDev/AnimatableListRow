//
// AnimatableListRowContent.swift
// AnimatableListRow
// https://github.com/JPToroDev/AnimatableListRow
// See LICENSE for license information.
// © 2024 J.P. Toro
//

import SwiftUI

struct AnimatableListRowContent<Content: View>: View, Animatable {
    var height: CGFloat
    @ViewBuilder var content: () -> Content

    nonisolated var animatableData: Double {
        get { height }
        set { height = newValue }
    }

    var body: some View {
        content()
            .frame(height: height, alignment: .top)
    }
}
