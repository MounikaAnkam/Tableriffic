//
//  SportsTVC.swift
//  Tableriffic
//
//  Created by Mounika Ankam on 2/19/15.
//  Copyright (c) 2015 Mounika Ankam. All rights reserved.
//

import UIKit

class SportsTVC: UITableViewController {
    var sports:[String] = ["Hockey", "Soccer", "Tennis", "Cricket", "Football"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return sports.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("sport_cell", forIndexPath: indexPath) as UITableViewCell

        //cell.textLabel?.text = sports[indexPath.row]  instead of using the built-in textLabel, we're
        // going to use a custom cell, drag in a UILabel (formatting is as we see fit) and giving it
        // a tag so we can retrieve it.  Where *is* this 100 specified in storyboard?  Go find it.
        var lab:UILabel = cell.viewWithTag(100) as UILabel
        lab.text = sports[indexPath.row]
        return cell
    }
    
    // This a table view delegate method -- called when the user taps on a particular row
    // We create a new view controller here, configure it, and present it
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       
        // Instantiate an EquipmentVC
        // Every storyboard defines a method, instantiateViewControllerWithIdentifier().  
        // So, how do we access our storyboard?  Every view controller, including this
        // one (self) defines a stored property, storyboard:  so, all we needed to write was
        // self.storyboard -- easy, eh?  So easy that you can expect this on Tuesday's quiz :-) :-)
        
        var equipmentVC:EquipmentVC = self.storyboard?.instantiateViewControllerWithIdentifier("equipment") as EquipmentVC
        
        // Give EquipmentVC a UIImage to display
        equipmentVC.image = UIImage(named: sports[indexPath.row])
        // Present the EquipmentVC -- this causes it to rise majestically from the bottom of the screen        
        self.presentViewController(equipmentVC, animated: true , completion: nil)
    }

    // This method is called when the user clicks on the + button
    @IBAction func addNewSportsEquipment(sender: AnyObject) {
        
        var newEquipmentVC = self.storyboard?.instantiateViewControllerWithIdentifier("add_new_equipment") as AddNewEquipmentViewController
        newEquipmentVC.sportsTVC = self // now NewEquipmentViewController can "talk back" to us, invoking addNewSport() or cancel() as appropriate
        self.presentViewController(newEquipmentVC, animated: true , completion: nil)
    }
    
    // This method is called from AddNewEquipmentViewController when the
    // user clicks on Done
    
    func addNewSport(sport:String){
        sports += [sport] // increase our data model
        self.tableView.reloadData() // the tableview will reload its data
        self.dismissViewControllerAnimated(true, completion: nil)
        // gets rid of AddNewEquipmentViewController
    }
    
    func cancel(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }


}
