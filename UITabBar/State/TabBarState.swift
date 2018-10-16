//
//  TabBarState.swift
//  UITabBar
//
//  Created by User on 15/10/18.
//  Copyright © 2018 JYSK Indonesia. All rights reserved.
//

import ReSwift

struct TabBarState: StateType {
    var selectedIndex: Int = 0
    var controllers: [UIViewController] = [UIViewController()]
    var getOnboardingPage: Bool = false
    var isLoginPage: Bool = false
    var isUpdatePage: Bool = false
    var dismissPage: Bool = false
    var hiddenView: Bool = false
    var token: String = ""
//    var result: UpdateVersionResult?
    var isLogin: Bool = false
//    var role: Roles = .candidate
}
