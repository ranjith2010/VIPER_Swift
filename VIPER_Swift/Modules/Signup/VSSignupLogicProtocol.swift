//
//  VSSignupLogicProtocol.swift
//  VIPER_Swift
//
//  Created by ranjith on 20/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import Foundation

@objc protocol VSSignupLogicProtocol {
    func createUser(userModel :VSUserModel)
}