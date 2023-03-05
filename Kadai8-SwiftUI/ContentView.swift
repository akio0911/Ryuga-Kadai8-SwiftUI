//
//  ContentView.swift
//  Kadai8-SwiftUI
//
//  Created by Ryuga on 2023/03/05.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue = 0.0
    
    var body: some View {
        TabView {
            SliderView(sliderValue: $sliderValue, backGroundColor: Color.black)
                .tabItem{
                    Text("Item 1")
                }
            SliderView(sliderValue: $sliderValue, backGroundColor: Color.gray)
                .tabItem{
                    Text("Item 2")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
