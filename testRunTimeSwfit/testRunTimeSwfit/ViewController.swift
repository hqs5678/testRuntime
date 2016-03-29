//
//  ViewController.swift
//  testRunTimeSwfit
//
//  Created by hqs on 16/3/25.
//  Copyright © 2016年 hqs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let stu = Student()
        stu.descriptiveName = "ahhahhfdhahhdah"
        
        print(stu.descriptiveName)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

