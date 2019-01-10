//
//  tableVC.swift
//  iOSLab
//
//  Created by Andrey Minin on 10/01/2019.
//  Copyright © 2019 Andrey Minin. All rights reserved.
//

import UIKit

class tableVC: UITableViewController {
    
    
    lazy var refresher: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.tintColor = .red
        refreshControl.addTarget(self, action: #selector(requestData), for: .valueChanged)
        return refreshControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.refreshControl = refresher
    }
    @objc func requestData() {
        print("requesting data")
        refresher.endRefreshing()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = String(indexPath.row)
        cell.textLabel?.textColor = .green
        
        return cell
    }
    
    
}
