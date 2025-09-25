//
// AnimatableListRow.swift
// AnimatableListRow
// https://github.com/JPToroDev/AnimatableListRow
// See LICENSE for license information.
// © 2024 J.P. Toro
//

import SwiftUI

/// A SwiftUI view that wraps its content in an animatable container,
/// allowing smooth height transitions for list rows.
///
/// Use this view to create list rows that can animate their
/// height changes smoothly.
///
/// - Parameters:
///   - animation: The animation to apply to height changes.
///   Defaults to `.easeInOut` if not specified.
///   - content: A closure returning the content view to be wrapped.
public struct AnimatableListRow<Content: View>: View {
    var animation: Animation? = .easeInOut
    @ViewBuilder var content: () -> Content

    @State private var height = 0.0
    @State private var hasAppeared = false

    public var body: some View {
        AnimatableListRowContent(height: height) {
            content()
                .onGeometryChange(for: CGFloat.self) { proxy in
                    proxy.size.height
                } action: { height in
                    self.height = height
                }
        }
        .animation(hasAppeared ? animation : nil, value: height)
        .task { hasAppeared = true }
        // Prevents the row from animating on appear
    }
}
