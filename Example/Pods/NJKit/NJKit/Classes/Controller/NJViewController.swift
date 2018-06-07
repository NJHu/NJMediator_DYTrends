//
//  NJViewController.swift
//  NJSwiftTodayNews
//
//  Created by HuXuPeng on 2018/5/15.
//  Copyright © 2018年 njhu. All rights reserved.
//

import UIKit

open class NJViewController: NJNavBarViewController {
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.groupTableViewBackground
        automaticallyAdjustsScrollViewInsets = false
    }
    deinit {
        print("deinit-\(self)")
    }
}
