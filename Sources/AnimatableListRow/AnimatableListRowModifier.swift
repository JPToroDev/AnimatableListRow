//
//  AnimatableListRowModifier.swift
//  AnimatableListRow
//
//  Created by Joshua Toro on 10/16/24.
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

extension View {
    func animatableListRow(animation: Animation? = .default) -> some View {
        modifier(AnimatableListRowModifier(animation: animation))
    }
}
