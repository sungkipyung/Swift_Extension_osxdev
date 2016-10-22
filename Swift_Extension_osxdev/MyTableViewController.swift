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
    
    fileprivate var items: [String]!
    fileprivate var selectedIndexPath: IndexPath?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        items = ["1", "2", "3"]
    }
}

extension MyTableViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        
        cell.myTextLabel.text = items[indexPath.row]
        
        if selectedIndexPath == indexPath {
            cell.backgroundColor = UIColor.red
        } else {
            cell.backgroundColor = UIColor.white
        }
        
        return cell
    }
}

extension MyTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndexPath = indexPath
        tableView.reloadData()
    }
}
