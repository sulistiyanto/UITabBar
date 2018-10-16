//
//  BottomMenuModel.swift
//  UITabBar
//
//  Created by User on 15/10/18.
//  Copyright © 2018 JYSK Indonesia. All rights reserved.
//

import UIKit

protocol Service {
    func toArray() -> [Menu]
    func toSchedule() -> [Menu]
    func toMentor() -> [Menu]
}

struct BottomMenu: Service {
    func toSchedule() -> [Menu] {
        return [.schedule, .help, .profile]
    }
    
    func toMentor() -> [Menu] {
        return [.mentor, .help, .profile]
    }
    
    func toArray() -> [Menu] {
        return [.home, .help, .profile]
    }
}

struct BottomMenuModel {
    let bottomMenu: BottomMenu = BottomMenu()
    var controllerView: [UIViewController]
    var itemBar: [UITabBarItem]
}
enum Menu {
    case home, schedule, profile, help, mentor
    var selected: UIImage {
        switch self {
            
        case .profile:
            return #imageLiteral(resourceName: "ic_bottom_bar_profile_active")
        case .help:
            return #imageLiteral(resourceName: "ic_bottom_bar_help_active")
        default:
            return #imageLiteral(resourceName: "ic_bottom_bar_home_active")
        }
    }
    var normal: UIImage {
        switch self {
            
        case .profile:
            return #imageLiteral(resourceName: "ic_bottom_bar_profile_inactive")
        case .help:
            return #imageLiteral(resourceName: "ic_bottom_bar_help_inactive")
        default:
            return #imageLiteral(resourceName: "ic_bottom_bar_home_inactive")
        }
    }
    
    var title: String {
        switch self {
            
        case .profile:
            return "Profile"
        case .help:
            return "Help"
        default:
            return "Academy"
        }
    }
}

