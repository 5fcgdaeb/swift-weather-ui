//
//  TopNavigationBarView.swift
//  swift-weather-ui
//
//  Created by Guven Bolukbasi on 21.12.2019.
//  Copyright © 2019 dorianlabs. All rights reserved.
//

import SwiftUI

struct TopNavigationBarView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 10.0) {
            Button(action: {}) {
                Image("Location")
            }
            Text("Suadiye - Kadikoy")
                .lineLimit(1)
            Spacer()
            Button(action: {}) {
                Image("LiveMap")
            }
            Button(action: {}) {
                Image("Settings")
            }
        }
        .padding()
    }
}

struct TopNavigationBarView_Previews: PreviewProvider {

    static var previews: some View {
		Group {

            // Pure View
            TopNavigationBarView()
                .previewDisplayName("Pure")
                .previewLayout(.sizeThatFits)
            
			// Regular
            TopNavigationBarView()
                .previewDisplayName("Simple")

            // Regular on SE
            TopNavigationBarView()
                .previewDevice("iPhone SE")
                .previewDisplayName("iPhone SE")

            // Dark
            TopNavigationBarView()
                .environment(\.colorScheme, .dark)
                .darkModeFix()
                .previewDisplayName("Dark mode")

            // XS
            TopNavigationBarView()
                .environment(\.sizeCategory, .extraSmall)
                .previewDisplayName("XS Fonts")

            // XXL
            TopNavigationBarView()
                .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
                .previewDisplayName("XXXXL Fonts")
		}
    }
}
