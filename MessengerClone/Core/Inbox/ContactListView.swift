//
//  ContactListView.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 17/7/23.
//

import SwiftUI

struct ContactListView: View {
    var body: some View {
        ScrollView(showsIndicators:false){
            ForEach(0...10,id: \.self){user in
                ContactComp()
            }
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}
