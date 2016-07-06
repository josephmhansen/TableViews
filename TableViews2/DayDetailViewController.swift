//
//  DayDetailViewController.swift
//  TableViews2
//
//  Created by Joseph Hansen on 7/6/16.
//  Copyright © 2016 Joseph Hansen. All rights reserved.
//

import UIKit

class DayDetailViewController: UIViewController {
    
    var day: String? 

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = day
        
        // Do any additional setup after loading the view.
    }

}
