//
//  FirstTextField.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 12/7/23.
//

import SwiftUI

struct FirstTextField: View {
    @State private var text:String = ""
    var body: some View {
        TextField("Enter you email", text: $text)
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)
    }
    init(content:String){
        text = content
    }
}

struct FirstTextField_Previews: PreviewProvider {
    static var previews: some View {
        FirstTextField(content: "towhid")
    }
}
