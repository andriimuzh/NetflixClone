//
//  ViewController.swift
//  NetflixClone
//
//  Created by Andrii Muzh on 25.05.2022.
//

import UIKit

class RootTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tab1 = createNavigationViewController(viewController: HomeViewController(), imageName: "house", title: "Home")
        let tab2 = createNavigationViewController(viewController: UpcomingViewController(), imageName: "play.circle", title: "Upcoming")
        let tab3 = createNavigationViewController(viewController: SearchViewController(), imageName: "magnifyingglass", title: "Search")
        let tab4 = createNavigationViewController(viewController: SearchViewController(), imageName: "arrow.down.to.line", title: "Downloads")
        
        tabBar.tintColor = .label
        
        setViewControllers([tab1, tab2, tab3, tab4], animated: true)
    }
    
    // MARK: - Helpers
    
    func createNavigationViewController(viewController: UIViewController, imageName: String, title: String) -> UINavigationController {
        let nav = UINavigationController(rootViewController: viewController)
        nav.tabBarItem.image = UIImage(systemName: imageName)
        nav.tabBarItem.title = title
        return nav
    }

}

