
import Foundation

enum env {
    private static let infoPlist: [String:Any] = {
        guard let infoDict = Bundle.main.infoDictionary else{
            fatalError("plist not found")
        }
        return infoDict
    }()

    static let appName:String = {
        guard let name = env.infoPlist["App_Name"] as? String else {
            fatalError("App name not found")
        }

        return name
    }()
    
    static let rootUrl:URL = {
        guard let urlString = env.infoPlist["Root_URL"] as? String else{
            fatalError("Root_URL doesn't found")
        }
        guard let url = URL(string: urlString) else{
            fatalError("Root_URL is invalid")
        }
        return url
    }()
}
