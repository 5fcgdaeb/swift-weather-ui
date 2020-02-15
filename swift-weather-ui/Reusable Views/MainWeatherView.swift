//
//  MainWeatherView.swift
//  swift-weather-ui
//
//  Created by Guven Bolukbasi on 15.02.2020.
//  Copyright © 2020 dorianlabs. All rights reserved.
//

import SwiftUI

struct MainWeatherView: View {
    var body: some View {
        ZStack {
            BuluttanBackgroundView()
            CurrentObservationView()
        }
    }
}

struct MainWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewFactory.previews(forView: MainWeatherView())
    }
}
