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
    func parseJSON() {
        let url = URL(string: "https://api.myjson.com/bins/pbeuv")
        
        let task = URLSession.shared.dataTask(with: url!) {(data, response, error) in
            
            guard error == nil else {
                print("returning error")
                return
            }
            
            guard let content = data else {
                print("not returning data")
                return
            }
            
            
            guard let json = (try? JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers)) as? [String: Any] else {
                print("Not containing JSON")
                return
            }
            
            if let array = json["skills"] as? [String] {
                self.tableArray = array
                self.tableArray[0] = "My Skills"
                
            }
            
            print(self.tableArray)
            
            DispatchQueue.main.async {
                self.tbl.reloadData()
            }
            
        }
        
        task.resume()
        
    }

  

}
extension HarshScreenController{
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbl.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = self.tableArray[indexPath.row]
        
        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableArray.count
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(self.tableArray[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
    }
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction(style: .destructive, title: "Delete") { (action, indexPath) in
            // delete item at indexPath
            self.tableArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            print(self.tableArray)
        }
        
        let more = UITableViewRowAction(style: .default, title: "More") { (action, indexPath) in
            // share item at indexPath
            print("I know: \(self.tableArray[indexPath.row])")
            let skill = Skill(type: self.tableArray[indexPath.row])
            let alertController = UIAlertController(
                title:"\(skill.type)",message: skill.returnType(), preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "Ok", style: .default, handler:nil)
            alertController.addAction(okAction)
            
            self.present(alertController, animated: true, completion: nil)
        }
        
        more.backgroundColor = UIColor.lightGray
        
        return [delete, more]
        
    }
}
