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

			// Regular
			BuluttanBackgroundView()

			// Regular on SE
			BuluttanBackgroundView()
				.previewDevice("iPhone SE")

			// Dark
			BuluttanBackgroundView()
				.environment(\.colorScheme, .dark)
				.darkModeFix()

			// XS
			BuluttanBackgroundView()
				.environment(\.sizeCategory, .extraSmall)

			// XXL
			BuluttanBackgroundView()
				.environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
		}
    }
}

