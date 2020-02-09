//
//  PreviewGroup.swift
//  swift-weather-ui
//
//  Created by Guven Bolukbasi on 31.01.2020.
//  Copyright © 2020 dorianlabs. All rights reserved.
//

import SwiftUI

struct PreviewGroupProvider<XX: View> {

    static func a(x: XX) -> some View {
        
        return Group {
            
            // Pure View
            x
            .previewDisplayName("Pure")
            .previewLayout(.sizeThatFits)

            // Regular
            x
            .previewDisplayName("Simple")

            // Regular on SE
            x
            .previewDevice("iPhone SE")
            .previewDisplayName("iPhone SE")

            // Dark
            x
            .environment(\.colorScheme, .dark)
            .darkModeFix()
            .previewDisplayName("Dark mode")

            // XS
            x
            .environment(\.sizeCategory, .extraSmall)
            .previewDisplayName("XS Fonts")

            // XXL
            x
            .environment(\.sizeCategory,.accessibilityExtraExtraExtraLarge)
            .previewDisplayName("XXXXL Fonts")
        }
    }
}
