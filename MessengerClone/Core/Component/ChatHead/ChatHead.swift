//
//  ChatHead.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 16/7/23.
//

import SwiftUI

struct ChatHead: View {
    private var imageLink:String
    private var size:CGFloat
    private var isActive:Bool
    private var activeStatusColor:Color = Color(.green)
    private var inactiveStatusColor:Color = Color(.systemGray6)
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            Image(imageLink)
                .resizable()
                .frame(width: size,height: size)
                .cornerRadius(size/2)
            ZStack{
                Circle()
                    .fill(.white)
                    .frame(width: whiteCircleSize(size),height: whiteCircleSize(size))
                Circle()
                    .fill(isActive ? activeStatusColor : inactiveStatusColor)
                    .frame(width: greenCircleSize(size),height: greenCircleSize(size))
            }
                
        }
    }
    
    init(imageLink:String,size:CGFloat,isActive:Bool){
        self.imageLink = imageLink
        self.size = size
        self.isActive = isActive
    }
    
    private func whiteCircleSize(_ size:CGFloat) -> CGFloat {
        size / 3.56
    }
    
    private func greenCircleSize(_ size:CGFloat) -> CGFloat {
        size / 5.33
    }
    
    private struct ChatHeadConstant {
        static let whiteCircleSizeDivideFactor:CGFloat = 3.56
        static let greenCircleSizeDivideFactor:CGFloat = 5.33
    }
    
    
}

struct ChatHead_Previews: PreviewProvider {
    static var previews: some View {
        ChatHead(imageLink: image.dummyProfile, size: 64, isActive: true)
    }
}
