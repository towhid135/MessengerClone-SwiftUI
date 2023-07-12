//
//  CustomTextField.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 12/7/23.
//

import SwiftUI

struct CustomTextField: View {
    var body: some View{
        VStack{
            customTextFieldBody
        }
    }
    private var variant:textFieldVariant
    private var text:String = ""
    enum textFieldVariant {
        case firstTextField,secondTextField
    }
   
    
    init(variant:textFieldVariant,text: String) {
        self.variant = variant
        self.text = text
    }
    
    private var customTextFieldBody: AnyView {
        switch variant{
        case .firstTextField:
            return AnyView(FirstTextField(content: text))
        default:
            return AnyView(EmptyView())
        }
    }
    
    
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(variant: .firstTextField,text: "towhid")
    }
}
