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
	let currentConditionsText = "Feeling good with 2 degrees"
	let currentConditionsImageName = "cloudy"

	var body: some View {

		VStack {
			Text(self.feelsLikeText)
			Text(self.currentConditionsText)
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentObservationView()
    }
}
