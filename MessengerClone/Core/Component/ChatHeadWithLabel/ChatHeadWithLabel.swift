//
//  ChatHeadWithLabel.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 16/7/23.
//

import SwiftUI

struct ChatHeadWithLabel: View {
    private var imageLink:String
    private var label:String
    private var size:CGFloat
    private var isActive:Bool
    
    var body: some View {
        VStack{
            ChatHead(imageLink: image.dummyProfile, size: size, isActive: true)
            Text("Towhid")
                .font(Font.system(size: scale(for: size)))
                .foregroundColor(.gray)
        }
    }
    
    init(imageLink: String, label:String, size: CGFloat, isActive: Bool) {
        self.imageLink = imageLink
        self.size = size
        self.isActive = isActive
        self.label = label
    }
    
    private func scale(for size:CGFloat) -> CGFloat {
        size / Constants.labelScaleFactor
    }
    
    private struct Constants{
        static let labelScaleFactor:CGFloat = 3.5
    }
}

struct ChatHeadWithLabel_Previews: PreviewProvider {
    static var previews: some View {
        ChatHeadWithLabel(imageLink: image.dummyProfile, label: "Towhid", size: 64, isActive: true)
    }
}
