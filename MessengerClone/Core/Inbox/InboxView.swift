//
//  InboxView.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 16/7/23.
//

import SwiftUI

struct InboxView: View {
    @State private var showNewMessageView = false
    @State private var showProfileView = false
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                ActiveNowView()
                    .padding(.top)
                List{
                    ForEach(0...10, id: \.self){ message in
                        InboxRowView()
                    }
                }
                .listStyle(PlainListStyle())
                .frame(height: UIScreen.main.bounds.height - 120)
            }
            .fullScreenCover(isPresented: $showNewMessageView){
                NewMessageView()
            }
           
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    HStack {
                        NavigationLink{
                            ProfileView(profileViewModel: ProfileViewModel())
                        } label: {
                            Image(systemName: "person.circle.fill")
                                .foregroundColor(.black)
                        }
                        Text("Chats")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                    
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        showNewMessageView.toggle()
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
