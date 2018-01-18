//
//  CatInfoTableViewController.swift
//  MyPrototype
//
//  Created by 오지연 on 2018. 1. 11..
//  Copyright © 2018년 mim. All rights reserved.
//

import UIKit

class CatInfoTableViewController: UITableViewController {
    
    let arrayInfo : [[String: String]] = [["log":"2018.01.11 10:00AM", "type" : "food", "desc" : "밥:고구마잘먹음"],
                     ["log":"2018.01.11 11:00AM", "type" : "stress", "desc" : "높음:할큄"],
                     ["log":"2018.01.11 12:00AM", "type" : "food", "desc" : "밥:사료잘먹음"],
                     ["log":"2018.01.11 01:00PM", "type" : "stress", "desc" : "낮음:꾹꾹이함"],
                     ["log":"2018.01.11 10:00AM", "type" : "food", "desc" : "밥:고구마잘먹음"],
                     ["log":"2018.01.11 11:00AM", "type" : "stress", "desc" : "높음:할큄"],
                     ["log":"2018.01.11 12:00AM", "type" : "food", "desc" : "밥:사료잘먹음"],
                     ["log":"2018.01.11 01:00PM", "type" : "stress", "desc" : "낮음:꾹꾹이함"]]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayInfo.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
  //      for i in 0...arrayInfo.count-1{
   //         let theme = arrayInfo[i]
        
            let theme = self.arrayInfo[indexPath.row]
        
            var cellName = "Left Cell" // food
            
            if theme["type"] == "stress"{
                cellName = "Right Cell"
            }
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath)
        
        (cell.viewWithTag(1) as! UILabel).text = theme["log"]
        
        (cell.viewWithTag(2) as! UILabel).text = theme["desc"]
        
    return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
