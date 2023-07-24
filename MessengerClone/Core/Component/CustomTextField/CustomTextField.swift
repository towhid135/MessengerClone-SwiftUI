//
//  CustomTextField.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 12/7/23.
//

import SwiftUI

struct CustomTextField: View {
    @Binding private var text:String
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
   
    
    init(variant:textFieldVariant,backgroundColor:Color,text: Binding<String>) {
        self.variant = variant
        self.backgroundColor = backgroundColor
        self._text = text
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
        CustomTextField(variant: .firstTextField,backgroundColor: Color(.systemGray6),text: Binding.constant(""))
    }
}
