//
//  TabBarReducer.swift
//  UITabBar
//
//  Created by User on 15/10/18.
//  Copyright © 2018 JYSK Indonesia. All rights reserved.
//

import ReSwift

//let keychain = KeychainSwift()

func tabBarReduce(actions: Action, state: TabBarState?) -> TabBarState {
    var state = state ?? TabBarState()
    
//    var profileState = profileState ?? ProfileState()
    switch actions {
    case let action as TabBarAction:
        let menus = BottomMenu()
        switch action.menu {
        case .schedule:
            state.controllers = getControllers(array: menus.toSchedule())
        case .mentor:
            state.controllers = getControllers(array: menus.toMentor())
        default:
            state.controllers = getControllers(array: menus.toArray())
        }
        
    default:
        break
    }
    
    return state
}

private func getControllers(array: [Menu]) -> [UIViewController] {
    var controllers: [UIViewController] = []
    
    for (index, value) in array.enumerated() {
        var controller: UIViewController!
        switch value {
        case .help:
            controller = HelpViewController()
        case .profile:
            controller = ProfileCollectionViewController()
        case .schedule,.mentor:
            controller = StudentViewController()
        default:
            controller = HomeViewController()
        }
//        controller.tabBarItem = getTabBarItem(menu: value)
        controller.title = value.title
        controllers.insert(controller, at: index)
    }
    return controllers
}

