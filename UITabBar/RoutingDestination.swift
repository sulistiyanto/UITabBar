//
//  RoutingDestination.swift
//  UITabBar
//
//  Created by User on 15/10/18.
//  Copyright © 2018 JYSK Indonesia. All rights reserved.
//

import ReSwift

enum RoutingDestination : String {
    case tab
    
    var controller: UIViewController {
        switch self {
        case .tab:
            return TabBarViewController()
        }
    }
}
