//
//  ContentView.swift
//  swift-weather-ui
//
//  Created by Guven Bolukbasi on 8.12.2019.
//  Copyright © 2019 dorianlabs. All rights reserved.
//

import SwiftUI

struct CurrentObservationView: View {

	let currentTemperature: Float = 1.4
	let dailyMaxTemperature: Float = 5.2
	let dailyMinTemperature: Float = -2.8
	let feelsLikeText = "Feels like -3"
	let currentConditionsText = "Slightly Windy"
	let currentConditionsImageName = "MostlySunny"

	var body: some View {

		HStack {
			Image(self.currentConditionsImageName)
				.resizable()
				.scaledToFit()
				.scaleEffect(0.6)
			VStack {
				HStack {
					Text(String(format: "%.1f", self.currentTemperature))
						.font(Font.largeTitle)
						.fontWeight(.bold)
					Text(String(format: "%.1f", self.dailyMaxTemperature))
					Text("/")
					Text(String(format: "%.1f", self.dailyMinTemperature))
				}
				Text(self.feelsLikeText)
				Text(self.currentConditionsText)
			}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		Group {

			// Regular
			CurrentObservationView()

			// Regular on SE
			CurrentObservationView()
				.previewDevice("iPhone SE")

			// Dark
			CurrentObservationView()
				.environment(\.colorScheme, .dark)
				.darkModeFix()

			// XS
			CurrentObservationView()
				.environment(\.sizeCategory, .extraSmall)

			// XXL
			CurrentObservationView()
				.environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
		}
    }
}
