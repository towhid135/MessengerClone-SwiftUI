//
//  ContactComp.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 17/7/23.
//

import SwiftUI

struct ContactComp: View {
    var body: some View {
        VStack{
            HStack{
                ContactProfileComp(image: Image(image.dummyProfile), size: 32)
                Text("Towhidul Islam")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding(.leading)
            Divider()
                .padding(.leading,40)
        }
    }
}

struct ContactComp_Previews: PreviewProvider {
    static var previews: some View {
        ContactComp()
    }
}
