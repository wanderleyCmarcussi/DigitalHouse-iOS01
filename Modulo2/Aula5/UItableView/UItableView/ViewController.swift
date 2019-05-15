//
//  ViewController.swift
//  UItableView
//
//  Created by Digital House on 14/05/19.
//  Copyright © 2019 Digital House. All rights reserved.
//

import UIKit

enum veiculo: Int {
    case toyota = 0
    case ford = 1
}

class ViewController: UITableViewController {

    var carroToyota:[String] = ["RAV 4", "COROLLA","HILLUX","YARES"]
    
    var carroFord: [String] = ["KA", "FIESTA","FOCUS"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
        
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "Toyota"
        } else {
            return "Ford"
        }
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        if section == 0 {
            return self.carroToyota.count
        } else {
            return self.carroFord.count
        }
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
        
      //  cell.textLabel?.text = String (indexPath.row)
        
        switch indexPath.section {
        case veiculo.toyota.rawValue:
            cell.textLabel?.text = self.carroToyota [indexPath.row]
        case veiculo.ford.rawValue:
            cell.textLabel?.text = self.carroFord [indexPath.row]
        default:
           return UITableViewCell()
        }
        
        
        //cell.textLabel?.text = self.carroFord[indexPath.row]
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.section {
        case veiculo.toyota.rawValue:
        print("Toyota")
        //cell.textLabel?.text = self.carroToyota [indexPath.row]
        case veiculo.ford.rawValue:
                print("ford")
        //cell.textLabel?.text = self.carroFord [indexPath.row]
        default:
            return: break
            
        }
        
    }
    
    
}

