//
//  InboxView.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 16/7/23.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    HStack {
                        Image(systemName: "person.circle.fill")
                        Text("Chats")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                    
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        print("edit pressed")
                    } label: {
                        Image(systemName: "square.and.pencil.circle.fill")
                            .resizable()
                            .frame(width: 32,height: 32)
                            .foregroundStyle(.black, Color(.systemGray6))
                    }
                }
            }
        }
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
