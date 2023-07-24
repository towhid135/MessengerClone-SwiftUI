
import Foundation
import Firebase

class AuthAction {
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
}
