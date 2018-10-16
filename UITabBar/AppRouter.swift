//
//  AppRouter.swift
//  UITabBar
//
//  Created by User on 15/10/18.
//  Copyright © 2018 JYSK Indonesia. All rights reserved.
//

import ReSwift

final class AppRouter {
    var navigationController: UINavigationController
    
    init(window: UIWindow) {
        navigationController = UINavigationController()
//        navigationController.viewControllers = [TabBarViewController()]
        window.rootViewController = navigationController
        store.subscribe(self) {
            $0.select {
                $0.routingState
            }
        }
    }
    
    fileprivate func navigateToViewController(state: RoutingState, dismiss: Bool, animated: Bool) {
        let viewController = state.navigationState.controller
        let newViewControllerType = type(of: viewController)
        if let currentVc = navigationController.topViewController {
            let currentViewControllerType = type(of: currentVc)
            if currentViewControllerType == newViewControllerType && !dismiss {
                return
            }
        }
        let vc = UINavigationController(rootViewController: viewController)
        switch state.segue {
        case .present:
            navigationController.present(vc, animated: animated, completion: nil)
        case .dismiss:
            navigationController.dismiss(animated: true, completion: nil)
        case .presentToPresent:
            navigationController.dismiss(animated: true, completion: nil)
            navigationController.present(vc, animated: animated, completion: nil)
        case .dismissToPush:
            navigationController.dismiss(animated: true, completion: nil)
            navigationController.pushViewController(viewController, animated: animated)
        case .push:
            navigationController.pushViewController(viewController, animated: animated)
        case .back:
            navigationController.popViewController(animated: true)
        }
    }
}

extension AppRouter: StoreSubscriber {
    
    func newState(state: RoutingState) {
        let shouldAnimate = navigationController.topViewController != nil
        if let nc = state.currentController {
            navigationController = nc
        }
        if state.nextNavigation {
            navigateToViewController(state: state, dismiss: state.dismiss, animated: shouldAnimate)
        }
    }
}


