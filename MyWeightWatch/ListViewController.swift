//
//  ListViewController.swift
//  MyWeight
//
//  Created by João Gabriel on 05/03/17.
//  Copyright © 2017 Diogo Tridapalli. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    
    var words: [String] = ["Android", "Is", "Easier"]
    
    // MARK: table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        cell.textLabel?.text = self.words[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.words.count
    }

}
