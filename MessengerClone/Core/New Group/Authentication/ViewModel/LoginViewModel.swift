//
//  LoginViewModel.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 24/7/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    private let authAction = AuthAction()
    
    func login(withEmail email:String, password:String) async throws {
        try await authAction.login(withEmail: email, password: password)
    }
    
    
}
