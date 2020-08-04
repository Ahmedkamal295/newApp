//
//  tabBarVC.swift
//  newApp
//
//  Created by Ahmed kamal on 8/3/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class tabBarVC: UITabBarController {

       override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            self.selectedIndex = 2
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
        }
        
        override var preferredStatusBarStyle: UIStatusBarStyle {
            return .lightContent
        }
    }
