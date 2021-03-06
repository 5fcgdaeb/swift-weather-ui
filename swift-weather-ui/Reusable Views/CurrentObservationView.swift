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
	let feelsLikeText = "Feels like -3°"
	let currentConditionsText = "Slightly Windy"
	let currentConditionsImageName = "MostlySunny"

	var body: some View {

		HStack {
			Image(self.currentConditionsImageName)
				.resizable()
				.frame(width: 100, height: 100)

			VStack {
				HStack {
					Text(String(format: "%.f°", self.currentTemperature))
						.font(Font.largeTitle)
						.fontWeight(.bold)
                        .foregroundColor(.white)
					Text(String(format: "%.f° / %.f°", self.dailyMaxTemperature, self.dailyMinTemperature))
                    .foregroundColor(.white)
				}
				Text(self.feelsLikeText)
					.padding([.bottom], 5)
                    .foregroundColor(.white)
				Text(self.currentConditionsText)
                    .foregroundColor(.white)
			}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        PreviewFactory.previews(forView: CurrentObservationView())
    }
    
}
