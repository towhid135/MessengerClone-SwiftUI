//
//  ProfileModel.swift
//  MessengerClone
//
//  Created by Bayshore Communication on 22/7/23.
//

import Foundation
import SwiftUI

struct ProfileModel: Identifiable {
    private (set) var id = NSUUID().uuidString
    private (set) var fullName:String = "Islam Towhid"
    private (set) var email:String = "towhidulislam252@gmail.com"
    private (set) var profileImageUrl:String?
    
    
}
