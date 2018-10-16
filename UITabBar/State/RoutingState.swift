//
//  RoutingState.swift
//  UITabBar
//
//  Created by User on 15/10/18.
//  Copyright © 2018 JYSK Indonesia. All rights reserved.
//

import ReSwift

struct RoutingState: StateType {
    var navigationState: RoutingDestination
    var segue: Segue
    var nextNavigation: Bool
    var dismiss: Bool = false
    var currentController: UINavigationController?
    
    init(navigationState: RoutingDestination = .tab, segue: Segue = .push, next: Bool = false) {
        self.navigationState = navigationState
        self.segue = segue
        self.nextNavigation = next
    }
}

enum Segue {
    case push, back, present, dismiss, presentToPresent, dismissToPush
}
