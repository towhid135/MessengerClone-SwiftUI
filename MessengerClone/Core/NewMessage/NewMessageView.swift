//
//  NewMessageView.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 17/7/23.
//

import SwiftUI

struct NewMessageView: View {
    @State private var searchText:String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    TextField("To: ",text: $searchText)
                        .frame(height: 44)
                        .padding(.leading)
                        .background(Color(.systemGroupedBackground))
                    Text("CONTACTS")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                }
                VStack{
                    ContactListView()
                }
                    
            }
            .navigationTitle("New Message")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement:.navigationBarLeading){
                    Button{
                        dismiss()
                    } label: {
                        Text("Cancel")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView()
    }
}
