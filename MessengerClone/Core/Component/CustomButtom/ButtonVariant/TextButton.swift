//
//  TextButton.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 12/7/23.
//

import SwiftUI

struct TextButton: View {
    var body: some View {
        VStack{
            Button {
                print("pressed")
            } label: {
                Text(buttonTitle)
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
            }
            .frame(width: buttonWidth,height: 44)
            .background(buttonColor)
            .cornerRadius(10)
        }
    }
    
//    enum size:Int {
//        case 
//    }
    
    private let buttonWidth:CGFloat
    private let buttonTitle:String
    private let buttonColor:Color
    private let buttonAction: () -> Void
 
    init(buttonWidth:CGFloat,buttonTitle:String,buttonColor:Color, buttonAction: @escaping () -> Void){
        self.buttonWidth = buttonWidth
        self.buttonTitle = buttonTitle
        self.buttonColor = buttonColor
        self.buttonAction = buttonAction
    }
}

struct TextButton_Previews: PreviewProvider {
    static var previews: some View {
        TextButton(buttonWidth: 360,buttonTitle: "Login",buttonColor: .tokenColor.buttonTheme1){
            print("pressed")
        }
    }
}
