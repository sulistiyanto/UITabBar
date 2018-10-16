//
//  RoutingReducer.swift
//  UITabBar
//
//  Created by User on 15/10/18.
//  Copyright © 2018 JYSK Indonesia. All rights reserved.
//

import ReSwift

func routingReducer(action: Action, state: RoutingState?) -> RoutingState {
    var state = state ?? RoutingState()
    
    switch action {
    case let routingAction as RoutingAction:
        state.navigationState = routingAction.destination
        state.segue = routingAction.segue
        state.nextNavigation = true
        state.dismiss = routingAction.segue == .dismiss || routingAction.segue == .presentToPresent
    default:
        state.nextNavigation = false
        state.dismiss = false
    }
    
    return state
}
