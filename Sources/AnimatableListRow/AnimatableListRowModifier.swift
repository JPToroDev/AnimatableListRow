//
//  AnimatableListRowModifier.swift
//  AnimatableListRow
//
//  Created by JP Toro on 10/16/24.
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
    /// Wraps the view in an AnimatableListRow, enabling smooth height transitions.
    ///
    /// Use this modifier to make any view animate its height changes when used in a list.
    ///
    /// - Parameter animation: The animation to apply to height changes. Defaults to `.easeInOut` if not specified.
    /// - Returns: A view wrapped in an AnimatableListRow.
    func animatableListRow(animation: Animation? = .easeInOut) -> some View {
        modifier(AnimatableListRowModifier(animation: animation))
    }
}
