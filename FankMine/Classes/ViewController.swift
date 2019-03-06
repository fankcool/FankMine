//
//  ViewController.swift
//  FankMine
//
//  Created by fank on 2019/3/6.
//  Copyright © 2019年 fank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myView = TestView.loadFromNib()
        myView.frame = CGRect(x: 50, y: 100, width: 200, height: 100)
        self.view.addSubview(myView)
    }
}

