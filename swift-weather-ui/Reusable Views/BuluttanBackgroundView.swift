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

    static var previews: some View {
		Group {

            // Pure View
            BuluttanBackgroundView()
                .previewDisplayName("Pure")
                .previewLayout(.sizeThatFits)
            
			// Regular
			BuluttanBackgroundView()
                .previewDisplayName("Simple")

			// Regular on SE
			BuluttanBackgroundView()
				.previewDevice("iPhone SE")
                .previewDisplayName("iPhone SE")

			// Dark
			BuluttanBackgroundView()
				.environment(\.colorScheme, .dark)
				.darkModeFix()
                .previewDisplayName("Dark mode")

			// XS
			BuluttanBackgroundView()
				.environment(\.sizeCategory, .extraSmall)
                .previewDisplayName("XS Fonts")

			// XXL
			BuluttanBackgroundView()
				.environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
                .previewDisplayName("XXXXL Fonts")
		}
    }
}

