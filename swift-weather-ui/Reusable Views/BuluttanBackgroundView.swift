//
//  BuluttanBackgroundView.swift
//  swift-weather-ui
//
//  Created by Guven Bolukbasi on 20.12.2019.
//  Copyright © 2019 dorianlabs. All rights reserved.
//

import SwiftUI

struct BuluttanBackgroundView: View {

	var body: some View {
		Image("BackgroundImage")
		.resizable()
		.scaledToFill()
		.edgesIgnoringSafeArea(.all)
    }
}

struct BuluttanBackgroundView_Previews: PreviewProvider {

    static var theViewUnderPreview: some View {
        BuluttanBackgroundView()
    }
    
    static var previews: some View {
		Group {

            // Pure View
            theViewUnderPreview
                .previewDisplayName("Pure")
                .previewLayout(.sizeThatFits)
            
			// Regular
			theViewUnderPreview
                .previewDisplayName("Simple")

			// Regular on SE
			theViewUnderPreview
				.previewDevice("iPhone SE")
                .previewDisplayName("iPhone SE")

			// Dark
			theViewUnderPreview
				.environment(\.colorScheme, .dark)
				.darkModeFix()
                .previewDisplayName("Dark mode")

			// XS
			theViewUnderPreview
				.environment(\.sizeCategory, .extraSmall)
                .previewDisplayName("XS Fonts")

			// XXL
			theViewUnderPreview
				.environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
                .previewDisplayName("XXXXL Fonts")
		}
    }
}

