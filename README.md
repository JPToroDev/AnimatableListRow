# AnimatableListRow 📱✨
[![Swift](https://img.shields.io/badge/Swift-6.0-orange.svg)](https://swift.org)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/platform-iOS%20%7C%20macOS-lightgrey.svg)](https://developer.apple.com/)

`AnimatableListRow` is a Swift package that solves the long-standing issue of smooth height transitions for SwiftUI List rows. It provides an elegant and flexible solution for animating height changes in List views without relying on hardcoded values or deprecated APIs.

> **Note:** Requires iOS 18 and aligned releases

## Background 🔍

SwiftUI's List component doesn't natively support smooth height animations for its rows. The traditional workaround, as discussed in [this Stack Overflow post](https://stackoverflow.com/questions/57854449/swiftui-animations-triggered-inside-a-view-thats-in-a-list-doesnt-animate-th/60873883#60873883), had limitations:

1. It required hardcoded "magic numbers" for cell heights.
2. It used `AnimatableModifier`, which has been deprecated as of iOS 18.1 and aligned releases.

`AnimatableListRow` addresses these issues, providing a more robust and future-proof solution.

## Features 🌟

- 🔄 Smooth, automatic height transitions for `List` rows
- 📏 No hardcoded height values required
- 🛠️ Easy to implement with a simple view modifier
- 🎨 Customizable animations

## Installation 💻

Add the following line to your `Package.swift` file's dependencies:

```swift
.package(url: "https://github.com/JPToroDev/AnimatableListRow.git", from: "1.0.0")
```

## Usage 🚀

To use `AnimatableListRow` in your SwiftUI views:

```swift
import SwiftUI
import AnimatableListRow

struct ContentView: View {

    @State private var isExpanded = false
    
    var body: some View {
        List {
            VStack {
                Text("Expandable Row")
                if isExpanded {
                    Text("Additional content")
                }
            }
            .animatableListRow() // Apply the modifier here
            .onTapGesture {
                withAnimation {
                    isExpanded.toggle()
                }
            }
        }
    }
}
```
## Note on Animations ⚠️

When using `.default` for the animation, scrolling the list before the animation completes will cause jittering.

## License 📄

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
