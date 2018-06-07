//
//  NJTableViewController.swift
//  NJSwiftTodayNews
//
//  Created by HuXuPeng on 2018/5/15.
//  Copyright © 2018年 njhu. All rights reserved.
//

import UIKit

open class NJTableViewController: NJViewController {
    
    @IBOutlet public var tableView: UITableView!
    private var style: UITableViewStyle = .plain
    
    public init(tableViewStyle: UITableViewStyle) {
        super.init(nibName: nil, bundle: nil)
        style = tableViewStyle;
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        if tableView == nil {
            addTableView()
        }
        setupTableView()
    }
}


extension NJTableViewController {
    
    private func setupTableView () {
        if #available(iOS 11, *) {
            tableView?.contentInsetAdjustmentBehavior = .never
        }
        if (parent != nil) && parent!.isKind(of: UINavigationController.classForCoder()) {
            var contentInset = tableView!.contentInset
            contentInset.top += nj_navigationBar.frame.size.height
            tableView?.contentInset = contentInset
        }
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.estimatedRowHeight = 0
        tableView?.estimatedSectionFooterHeight = 0
        tableView?.estimatedSectionHeaderHeight = 0
        
        tableView?.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    private func addTableView () {
        tableView = UITableView(frame: view.bounds, style: style)
        view.addSubview(tableView!)
    }
}

extension NJTableViewController: UITableViewDataSource, UITableViewDelegate {
    open func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        scrollView.scrollIndicatorInsets = scrollView.contentInset
        view.endEditing(true)
    }
    open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell(style: .default, reuseIdentifier: "UITableViewCell")
    }
    
}
