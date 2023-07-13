//
//  CustomButton.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 11/7/23.
//

import Foundation
import SwiftUI

struct CustomButton:View {
    
    var body: some View{
            customButtonBody
    }
    
    
    enum buttonVariant:String {
        case textButton
    }
    enum buttonSize:CGFloat{
        case
        small = 90,
        medium = 180,
        large = 360
    }
    
    private let variant:buttonVariant
    private let size:buttonSize
    private let buttonContent:String
    private let color:Color
    private let buttonAction: () -> Void
    
    init(variant: buttonVariant,size:buttonSize,buttonContent:String,color:Color,buttonAction: @escaping () -> Void) {
        self.variant = variant
        self.size = size
        self.buttonContent = buttonContent
        self.color = color
        self.buttonAction = buttonAction
    }
    
    private var customButtonBody: AnyView {
        if variant == .textButton {
            return AnyView(TextButton(buttonWidth: size.rawValue,buttonTitle: buttonContent,buttonColor: color,buttonAction: buttonAction))
        }else{
            return AnyView(EmptyView())
        }
            
    }
    
}

struct CustomButton_Preview: PreviewProvider {
    static var previews: some View{
        CustomButton(variant: .textButton, size: .small, buttonContent: "SignUp",color: .tokenColor.buttonTheme1){
            print("button pressed")
        }
    }
}
