//
//  RegistrationViewModel.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 24/7/23.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    func register(withEmail email:String, password:String, fullname:String) async throws {
        try await AuthAction().register(withEmail: email, password: password, fullname: fullname)
    }
}
