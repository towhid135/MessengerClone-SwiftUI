//
//  CustomButtonStyle.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 12/7/23.
//

import SwiftUI

struct CustomButtonStyle: View {
    var body: some View {
        VStack{
            CustomButton(variant: .textButton, size: .small, buttonContent: "Login", color: .tokenColor.buttonTheme1){
                print("pressed")
            }
            CustomButton(variant: .textButton, size: .medium, buttonContent: "Login",color: .tokenColor.buttonTheme1)
            {
                print("pressed")
            }
            CustomButton(variant: .textButton, size: .large, buttonContent: "Login",color: .tokenColor.buttonTheme1)
            {
                print("pressed")
            }
            
            CustomButton(variant: .textButton, size: .small, buttonContent: "Login", color: .tokenColor.buttonTheme2)
            {
                print("pressed")
            }
            CustomButton(variant: .textButton, size: .medium, buttonContent: "Login",color: .tokenColor.buttonTheme2)
            {
                print("pressed")
            }
            CustomButton(variant: .textButton, size: .large, buttonContent: "Login",color: .tokenColor.buttonTheme2)
            {
                print("pressed")
            }
            
            CustomButton(variant: .textButton, size: .small, buttonContent: "Login", color: .tokenColor.buttonTheme3)
            {
                print("pressed")
            }
            CustomButton(variant: .textButton, size: .medium, buttonContent: "Login",color: .tokenColor.buttonTheme3)
            {
                print("pressed")
            }
            CustomButton(variant: .textButton, size: .large, buttonContent: "Login",color: .tokenColor.buttonTheme3)
            {
                print("pressed")
            }
        }
    }
}

struct CustomButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonStyle()
    }
}
