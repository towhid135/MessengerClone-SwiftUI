//
//  FirstSecureField.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 13/7/23.
//

import SwiftUI

struct FirstSecureField: View {
    @Binding private var password:String
    private var backgroundColor:Color
    var body: some View {
        SecureField("Enter your password", text: $password)
            .font(.subheadline)
            .padding(12)
            .background(backgroundColor)
            .cornerRadius(10)
            .padding(.horizontal,24)
    }
    init(backgroundColor:Color,password: Binding<String>){
        self._password = password
        self.backgroundColor = backgroundColor
    }
}

struct FirstSecureField_Previews: PreviewProvider {
    static var previews: some View {
        FirstSecureField(backgroundColor: Color(.systemGray6),password: Binding.constant("123"))
    }
}
