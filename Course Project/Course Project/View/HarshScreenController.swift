//
//  HarshScreenController.swift
//  Course Project
//
//  Created by Harsh Shah on 2017-12-20.
//  Copyright © 2017 ProDigi. All rights reserved.
//

import UIKit

class HarshScreenController: UITableViewController {
     var tableArray = [String] ()
    @IBOutlet var tbl: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tbl.dataSource = self
        self.tbl.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
