//
//  CustomTextField.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 12/7/23.
//

import SwiftUI

struct CustomTextField: View {
    @State private var text:String
    private var variant:textFieldVariant
    private var backgroundColor:Color
    
    var body: some View{
        VStack{
            customTextFieldBody
        }
    }
    
    enum textFieldVariant {
        case firstTextField,secondTextField
    }
   
    
    init(variant:textFieldVariant,backgroundColor:Color,text: String) {
        self.variant = variant
        self.backgroundColor = backgroundColor
        self.text = text
    }
    
    private var customTextFieldBody: AnyView {
        switch variant{
        case .firstTextField:
            return AnyView(FirstTextField(backgroundColor: Color(.systemGray6),content: $text))
        default:
            return AnyView(EmptyView())
        }
    }
    
    
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(variant: .firstTextField,backgroundColor: Color(.systemGray6),text: "towhid")
    }
}
