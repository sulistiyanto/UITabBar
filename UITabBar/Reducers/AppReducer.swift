//
//  AppReducer.swift
//  UITabBar
//
//  Created by User on 15/10/18.
//  Copyright © 2018 JYSK Indonesia. All rights reserved.
//

import ReSwift

func appReducer(action: Action, state: AppState?) -> AppState {
    return AppState(
        routingState: routingReducer(action: action, state: state?.routingState),
        tabBarState: tabBarReduce(actions: action, state: state?.tabBarState)
    )
}
