//
//  AnimatableListRowContent.swift
//  AnimatableListRow
//
//  Created by JP Toro on 10/16/24.
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
