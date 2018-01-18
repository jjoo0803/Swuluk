//
//  CatListTableViewController.swift
//  MyPrototype
//
//  Created by 오지연 on 2018. 1. 16..
//  Copyright © 2018년 mim. All rights reserved.
//

import UIKit

class CatListTableViewController: UITableViewController {
    
    // 대학 정보를 저장하기 위함
    
    // 지도가 있는 상위 View: 선택한 대학 정보를 전달해 주기 위함
    var mainVC: mapViewController? // = nil
    
    var catList: [CatMap]!

    override func viewDidLoad() {
        super.viewDidLoad()
        let a = UIApplication.shared.delegate as! AppDelegate
        self.catList = a.catList
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
            
   override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       return "고양이를 선택하세요"
   }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.catList.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.mainVC?.selectedIndex = indexPath.row
        self.mainVC?.cat = self.catList[indexPath.row]
        self.tableView.reloadData()
        self.dismiss(animated: true, completion: nil)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CatList Cell", for: indexPath)
        
        if let view = self.mainVC {
            if let index = view.selectedIndex {
                if index == indexPath.row {
                    cell.accessoryType = .checkmark }
                else {
                    cell.accessoryType = .none }
            } }

        let mapCat = self.catList[indexPath.row]
        
        // 문제!!
        (cell.viewWithTag(1) as! UIImageView).image = mapCat.image//UIImage.init(named: dicInfo.image)!
        (cell.viewWithTag(2) as! UILabel).text = mapCat.title

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
