//
//  CustomSecureField.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 13/7/23.
//

import SwiftUI

struct CustomSecureField: View {
    @Binding private var password:String
    private var backgroundColor:Color
    private var variant:secureFieldVariant
    var body: some View {
        secureFieldBody
    }
    
    private var secureFieldBody: AnyView {
        switch variant{
        case .firstSecureField:
            return AnyView(FirstSecureField(backgroundColor: backgroundColor, password: $password))
        default:
            return AnyView(EmptyView())
        }
    }
    
    init(variant:secureFieldVariant,backgroundColor:Color,password: Binding<String>) {
        self.variant = variant
        self.backgroundColor = backgroundColor
        self._password = password
        
    }
    
    
    enum secureFieldVariant {
        case firstSecureField,secondSecureField
    }
}

struct CustomSecureField_Previews: PreviewProvider {
    static var previews: some View {
        CustomSecureField(variant: .firstSecureField,backgroundColor: Color(.systemGray6), password: Binding.constant("456"))
    }
}
