//
//  RegistrationView.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 13/7/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email:String = ""
    @State private var fullName:String = "Towhidul Islam"
    @State private var password:String = "1234"
    @Environment (\.dismiss) var dismiss
    var body: some View {
        VStack{
            Spacer()
            Image(image.messenger)
                .resizable()
                .scaledToFit()
                .frame(width: 150,height: 150)
                .padding(.bottom,20)
            VStack{
                CustomTextField(variant: .firstTextField, backgroundColor: Color(.systemGray6), text: email)
                CustomTextField(variant: .firstTextField, backgroundColor: Color(.systemGray6), text: fullName)
                CustomSecureField(variant: .firstSecureField, backgroundColor: Color(.systemGray6), password: password)
            }
            CustomButton(variant: .textButton, size: .large, buttonContent: "Sign Up", color: .tokenColor.buttonTheme3){
                print("signup button pressed")
            }
            .padding(.vertical,20)
            Spacer()
            Button{
                dismiss()
            } label: {
                HStack(spacing: 3){
                    Text("Already have an account?")
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
            }
            .padding(.vertical)
            
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
