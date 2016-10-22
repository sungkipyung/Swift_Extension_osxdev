//
//  MyTableViewController.swift
//  Swift_Extension_osxdev
//
//  Created by hothead on 2016. 10. 22..
//  Copyright © 2016년 hothead. All rights reserved.
//

import UIKit

class MyTableViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    fileprivate var items: [String]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        items = ["1", "2", "3"]
    }
}

class MyTableViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellIdentifier")
        
        cell?.textLabel.text = items[indexPath.row]
        
        return cell
    }
}

class MyTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
