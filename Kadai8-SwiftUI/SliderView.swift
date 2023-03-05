//
//  SliderView.swift
//  Kadai8-SwiftUI
//
//  Created by Ryuga on 2023/03/05.
//

import SwiftUI

struct SliderView: View {
    @Binding var sliderValue: Double
    let backGroundColor: Color
    private static let range = 0.0...1.0
    private static var floatRange: ClosedRange<Double> {
        Double(Self.range.lowerBound)...Double(Self.range.upperBound)
    }

    var body: some View {
        ZStack {
            backGroundColor

            VStack {
                Text("\(sliderValue)")
                    .foregroundColor(.blue)
                    .font(.title)

                Slider(value: $sliderValue,
                       in: Self.floatRange
                )
            }
        }
    }
}

struct Preview: View {
    @State var sliderValue = 0.0
    var body: some View {
        SliderView(sliderValue: $sliderValue, backGroundColor: Color.black)
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        Preview()
    }
}
