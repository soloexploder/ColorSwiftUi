//
//  ContentView.swift
//  ColorSwiftUi
//
//  Created by Даниил Хантуров on 19.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)

    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).ignoresSafeArea()
            
            VStack {
                VStack(spacing:50) {
                    ClorView(red: red, green: green, blue: blue)
                    
                    VStack {
                        SliderRGB(sliderValue: $red, color: .red)
                        SliderRGB(sliderValue: $green, color: .green)
                        SliderRGB(sliderValue: $blue, color: .blue)

                    }
                    .frame(height: 180)
                }
                .padding()
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
