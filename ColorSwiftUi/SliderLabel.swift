//
//  Label.swift
//  ColorSwiftUi
//
//  Created by Даниил Хантуров on 19.06.2021.
//

import SwiftUI

struct SliderLabel: View {
    
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 35, alignment: .leading)
            .foregroundColor(.white)
    }
}

struct Label_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
            SliderLabel(value: 10)
        }        
    }
}
