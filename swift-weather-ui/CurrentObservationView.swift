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


public struct DarkView<Content> : View where Content : View {
    var darkContent: Content
    var on: Bool
    public init(_ on: Bool, @ViewBuilder content: () -> Content) {
        self.darkContent = content()
        self.on = on
    }

    public var body: some View {
        ZStack {
            if on {
                Spacer()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    .background(Color.black)
                    .edgesIgnoringSafeArea(.all)
                darkContent.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity).background(Color.black).colorScheme(.dark)
            } else {
                darkContent
            }
        }
    }
}

extension View {
    public func darkModeFix(_ on: Bool = true) -> DarkView<Self> {
        DarkView(on) {
            self
        }
    }
}