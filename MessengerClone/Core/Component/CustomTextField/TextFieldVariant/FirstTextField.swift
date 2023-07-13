//
//  FirstTextField.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 12/7/23.
//

import SwiftUI

struct FirstTextField: View {
    @Binding private var text:String
    private var backgroundColor:Color
    var body: some View {
        textFieldBody
    }
    init(backgroundColor:Color,content: Binding<String> ){
        /*
         In Swift, when you define a property with a @Binding wrapper, you need to create a corresponding "projected value" property to access and modify the underlying value of the binding. By convention, the projected value property is prefixed with an underscore.
         */
        _text = content
        self.backgroundColor = backgroundColor
    }
    
    var textFieldBody: some View{
        TextField("Enter you email", text: $text)
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)
    }
}

struct FirstTextField_Previews: PreviewProvider {
    static var previews: some View {
        FirstTextField(backgroundColor: Color(.systemGray6),content: Binding.constant("towhid"))
    }
}
