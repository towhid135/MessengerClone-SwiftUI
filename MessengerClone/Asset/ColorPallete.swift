//
//  ColorPallete.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 11/7/23.
//

import SwiftUI

struct BaseColor {
    private enum ColorName:String {
        case
        accent1 = "color-accent1",
        accent2 = "color-accent2",
        brand1 = "color-brand",
        neutral1 = "color-neutral1",
        neutral2 = "color-neutral2",
        neutral3 = "color-neutral3"
        
    }
    
    let brand = Color(ColorName.brand1.rawValue)
    let accent1 = Color(ColorName.accent1.rawValue)
    let accent2 = Color(ColorName.accent2.rawValue)
    let neutral1 = Color(ColorName.neutral1.rawValue)
    let neutral2 = Color(ColorName.neutral2.rawValue)
    let neutral3 = Color(ColorName.neutral3.rawValue)
}

struct TokenColor {
    private let baseColor = BaseColor()
    
    let textColor1:Color
    let textColor2:Color
    
    let buttonTheme1:Color
    let buttonTheme2:Color
    let buttonTheme3:Color
    
    init(){
        self.textColor1 = baseColor.neutral1
        self.textColor2 = baseColor.neutral2
        self.buttonTheme1 = baseColor.neutral1
        self.buttonTheme2 = baseColor.neutral2
        self.buttonTheme3 = baseColor.neutral3
    }
}


