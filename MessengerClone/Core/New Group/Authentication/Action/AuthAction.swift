
import Foundation
import Firebase

class AuthAction {
    typealias albumList = [Album]
    struct Album: Codable{
        let albumId:Int
        let id:Int
        let title:String
        let url:URL
        let thumbnailUrl:URL
    }
    
    func login(withEmail email:String, password:String) async throws {
        print("AuthAction email: \(email), password: \(password)")
    }
    
    func register(withEmail email:String, password:String, fullname:String) async throws{
        do{
            let registerResult = try await Firebase.Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: Registration Result: \(registerResult.user.uid)")
        }catch{
            print("DEBUG: register error: \(error)")
        }
    }
    
    func fetchAlbums() async throws -> [Album] {
        let url = URL(string: "https://jsonplaceholder.typicode.com/photos")!
        
        let (data,response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw NSError(domain: "NetworkError", code: 404,userInfo: nil)
        }
        
        let albums = try? JSONDecoder().decode(albumList.self, from: data)
        
        return albums ?? []
    }
}
