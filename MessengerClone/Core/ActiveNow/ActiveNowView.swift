//
//  ActiveNowView.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 17/7/23.
//

import SwiftUI

struct ActiveNowView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(spacing: 32){
                ForEach(0...10,id: \.self){ use in
                    ChatHeadWithLabel(imageLink: image.dummyProfile, label: "towhid", size: 64, isActive: false)
                }
            }
        }
        .frame(height: 106)
    }
}

struct ActiveNowView_Previews: PreviewProvider {
    static var previews: some View {
        ActiveNowView()
    }
}
