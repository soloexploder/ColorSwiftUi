//
//  ClorView.swift
//  ColorSwiftUi
//
//  Created by Даниил Хантуров on 19.06.2021.
//

import SwiftUI

struct ClorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(
            red: red / 255,
            green: green / 255,
            blue: blue / 255
        )
            .cornerRadius(20)
            .frame(height: 150)
            .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.white, lineWidth: 10))
            
    }
}

struct ClorView_Previews: PreviewProvider {
    static var previews: some View {
        ClorView(red: 100, green: 100, blue: 100)
    }
}
