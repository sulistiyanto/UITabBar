//
//  TabBarViewController.swift
//  UITabBar
//
//  Created by User on 15/10/18.
//  Copyright © 2018 JYSK Indonesia. All rights reserved.
//

import UIKit
import ReSwift

class TabBarViewController:  UITabBarController, StoreSubscriber, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
    
    func newState(state: TabBarState) {
        
    }
}
