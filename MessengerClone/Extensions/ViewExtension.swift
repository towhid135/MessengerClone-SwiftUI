//
//  ViewExtension.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 9/7/23.
//

import Foundation
import SwiftUI


struct ButtonView: ViewModifier {
    func body(content: Content) -> some View {
        return ZStack{
            content
        }
        .frame(width:360,height:44)
        .background(Color(.systemBlue))
        .cornerRadius(10)
    }
}

extension View {
    var buttonView: some View {
        return self.modifier(ButtonView())
    }
}
