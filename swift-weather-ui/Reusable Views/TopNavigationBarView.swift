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
		Text("Hello")
    }
}

struct TopNavigationBarView_Previews: PreviewProvider {

    static var previews: some View {
		Group {

			// Regular
			TopNavigationBarView()

			// Regular on SE
			TopNavigationBarView()
				.previewDevice("iPhone SE")

			// Dark
			TopNavigationBarView()
				.environment(\.colorScheme, .dark)
				.darkModeFix()

			// XS
			TopNavigationBarView()
				.environment(\.sizeCategory, .extraSmall)

			// XXL
			TopNavigationBarView()
				.environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
		}
    }
}
