//
//  DarkView.swift
//  swift-weather-ui
//
//  Created by Guven Bolukbasi on 16.12.2019.
//  Copyright © 2019 dorianlabs. All rights reserved.
//

import SwiftUI

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
