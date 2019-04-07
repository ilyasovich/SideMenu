//
//  MenuOption.swift
//  SlideMenu
//
//  Created by Aman ILYASOVICH on 6.04.2019.
//  Copyright © 2019 Aman ILYASOVICH. All rights reserved.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    
    case Profile
    case Inbox
    case Notifications
    case Settings
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .Inbox: return "Inbox"
        case .Notifications: return "Notifications"
        case .Settings: return "Settings"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(named: "profile") ?? UIImage()
        case .Inbox: return UIImage(named: "mail") ?? UIImage()
        case .Notifications: return UIImage(named: "notifications") ?? UIImage()
        case .Settings: return UIImage(named: "settings") ?? UIImage()
        }
    }
}
