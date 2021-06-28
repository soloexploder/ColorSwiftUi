//
//  TextField.swift
//  ColorSwiftUi
//
//  Created by Даниил Хантуров on 19.06.2021.
//

import SwiftUI

struct SliderValueTF: View {
    
    @Binding var valueTF: Double
    @Binding var textValue: String
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $textValue, onCommit: checkValue)
            .frame(width: 55, alignment: .trailing)
            .multilineTextAlignment(.trailing)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Wrong Format"),
                    message: Text("Please enter value form 0 to 255"))
            }
    }
}

extension SliderValueTF {
    private func checkValue() {
        if let value = Int(textValue), (0...255).contains(valueTF) {
            self.valueTF = Double(value)
            return
        }
        showAlert.toggle()
        valueTF = 0
        textValue = "0"
    }
}

struct SliderValueTF_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.red
            SliderValueTF(valueTF: .constant(100), textValue: .constant("100"))
            
        }
    }
}
