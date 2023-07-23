//
//  ContactProfileComp.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 17/7/23.
//

import SwiftUI

struct ContactProfileComp: View {
    private var image:Image
    private var size:CGFloat
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            image
                .resizable()
                .frame(width: size,height: size)
                .clipShape(Circle())
                
        }
    }
    
    init(image:Image,size:CGFloat){
        self.image = image
        self.size = size
    }
    
    
}

struct ContactProfileComp_Previews: PreviewProvider {
    static var previews: some View {
        ContactProfileComp(image: Image(image.dummyProfile), size: 64)
    }
}
