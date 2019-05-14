//
//  ViewController.swift
//  UItableView
//
//  Created by Digital House on 14/05/19.
//  Copyright © 2019 Digital House. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

