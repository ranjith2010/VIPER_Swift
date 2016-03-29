//
//  VSSplashScreenNavigationProtocol.swift
//  VIPER_Swift
//
//  Created by ranjith on 20/01/16.
//  Copyright © 2016 ranjith. All rights reserved.
//

import Foundation
import UIKit

protocol VSSplashScreenNavigationProtocol {
    var window:UIWindow? {get set}
    func presentSplashScreenViewControllerInWindow()
    func presentLoginViewController()
    func presentSignupViewController()
}