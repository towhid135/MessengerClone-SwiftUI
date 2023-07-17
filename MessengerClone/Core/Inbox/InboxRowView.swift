//
//  InboxRowView.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 17/7/23.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12){
            ChatHead(imageLink: image.dummyProfile, size: 64, isActive: true)
            VStack(alignment: .leading,spacing: 4){
                Text("Towhidul Islam")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                Text("Hello sflsdflfl flsdf sldfjsdfj aljfdsfj ladfja fssdfdsdsafsadff")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .frame(maxWidth: UIScreen.main.bounds.width - 100)
                    .lineLimit(1)
                    
            }
            HStack{
                Text("Yesterday")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
        }
        .frame(height: 72)
    }
}

struct InboxRowView_Previews: PreviewProvider {
    static var previews: some View {
        InboxRowView()
    }
}
