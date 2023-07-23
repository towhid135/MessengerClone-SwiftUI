//
//  ProfileView.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 18/7/23.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
//    @StateObject var profileViewModel:ProfileViewModel = ProfileViewModel()
    @ObservedObject var profileViewModel: ProfileViewModel
    var body: some View {
        VStack{
            VStack{
                PhotosPicker(selection: $profileViewModel.selectedItem){
                    if let profileImage = profileViewModel.profileImage{
                        ContactProfileComp(image: profileImage, size: 80)
                       
                    }else{
                        ContactProfileComp(image: Image(image.dummyProfile), size: 80)
                    }
                }
                Text(profileViewModel.fullName)
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            
            
            List{
                Section{
                    ForEach(SettingsOptionsViewModel.allCases,id: \.self){ option in
                        SystemImageTextRowComp(imageName: option.imageName, imageSize: 30,imageBackgroundColor: option.imageBackgroundColor, text: option.title)
                    }
                }
                Section{
                    Button("Log Out"){
                        
                    }
                    Button("Delete Account"){
                        
                    }
                }
                .foregroundColor(.red)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(profileViewModel: ProfileViewModel())
    }
}
