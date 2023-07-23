

import SwiftUI
import PhotosUI

class ProfileViewModel: ObservableObject {
    @Published private var profileModel:ProfileModel = ProfileModel()
    
    var id:String {
        profileModel.id
    }
    var fullName:String {
        profileModel.fullName
    }
    var email:String {
        profileModel.email
    }
    var profileImageUrl:String? {
        profileModel.profileImageUrl
    }
    
    @Published var selectedItem:PhotosPickerItem? {
        didSet{
            Task {
                do{
                    try await loadImage()
                }catch{
                    print("Image loading error: \(error)")
                }
            }
        }
    }

    @Published var profileImage:Image?

    func loadImage() async throws {
        guard let item = selectedItem else {return}
        guard let imageData = try await item.loadTransferable(type: Data.self) else {return}
        guard let uiImage = UIImage(data: imageData) else {return}
        // Move the update to the main thread using DispatchQueue.main.async
        DispatchQueue.main.async {
            self.profileImage = Image(uiImage: uiImage)
        }
        
    }
    
    // Mark: - Intent(s)
    
   
}
