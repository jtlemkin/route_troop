//
//  RideFeedController.swift
//  Hack_Carpool
//
//  Created by James Lemkin on 1/19/20.
//  Copyright © 2020 James Lemkin. All rights reserved.
//

import UIKit

class RideFeedController: UITableViewController {
    
    var ridePostInfo = [RidePostInfo(), RidePostInfo(), RidePostInfo(), RidePostInfo(), RidePostInfo(), RidePostInfo(), RidePostInfo(), RidePostInfo()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.rowHeight = 350

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ridePostInfo.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RidePost", for: indexPath) as! RidePost

        // Configure the cell...
        let rideInfo = ridePostInfo[indexPath.row]
        
        cell.nameLabel.text = rideInfo.userProfile
        cell.bodyText.text = rideInfo.rideText
        cell.timePostedText.text = rideInfo.timePostedText
        cell.openSeatsText.text = rideInfo.openSeatsText
        
        cell.nameLabel.sizeToFit()
        cell.bodyText.sizeToFit()
        cell.timePostedText.sizeToFit()
        cell.openSeatsText.sizeToFit()

        return cell
    }
    
    /*override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90.0
    }*/
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
