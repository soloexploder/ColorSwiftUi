//
//  Slider.swift
//  ColorSwiftUi
//
//  Created by Даниил Хантуров on 19.06.2021.
//

import SwiftUI

struct SliderRGB: View {
    
    @Binding var sliderValue: Double
    @State private var textValue = ""
    
    let color: Color
    
    var body: some View {
        HStack{
            SliderLabel(value: sliderValue)
            
            Slider(value: $sliderValue, in:0...255, step: 1)
                .accentColor(color)
                .onChange(of: sliderValue) { isOnFocus in
                    textValue = "\(lround(isOnFocus))"
                }
            
            SliderValueTF(valueTF: $sliderValue, textValue: $textValue)
        }
        .onAppear {
            textValue = "\(lround(sliderValue))"
        }
//        .onTapGesture {
//            UIApplication.shared.endEditing()
//            sliderValue = Double(textValue)
//        }
            
    }
}

struct Slider_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.blue
            SliderRGB(sliderValue: .constant(200), color: .pink)
        }
    }
}
