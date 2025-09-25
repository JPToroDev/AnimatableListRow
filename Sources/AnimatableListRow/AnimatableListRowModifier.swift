//
// AnimatableListRowModifier.swift
// AnimatableListRow
// https://github.com/JPToroDev/AnimatableListRow
// See LICENSE for license information.
// © 2024 J.P. Toro
//

import SwiftUI

struct AnimatableListRowModifier: ViewModifier {
    var animation: Animation?

    func body(content: Content) -> some View {
        AnimatableListRow(animation: animation) {
            content
        }
    }
}

public extension View {
    /// Wraps the view in an `AnimatableListRow`, enabling smooth height transitions.
    /// - Parameter animation: The animation to apply to height changes.
    /// Defaults to `.easeInOut`.
    /// - Returns: A view wrapped in an AnimatableListRow.
    func animatableListRow(animation: Animation? = .easeInOut) -> some View {
        modifier(AnimatableListRowModifier(animation: animation))
    }
}
