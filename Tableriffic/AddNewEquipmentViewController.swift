,.//
//  AddNewEquipmentViewController.swift
//  Tableriffic
//
//  Created by Mounika Ankam on 2/22/15.
//  Copyright (c) 2015 Mounika Ankam. All rights reserved.
//

import UIKit

class AddNewEquipmentViewController: UIViewController {

    var sportsTVC:SportsTVC!
    @IBOutlet weak var sportNameTF: UITextField!
    
    @IBAction func cancel(sender: AnyObject) {
        sportsTVC.cancel()
    }
    @IBAction func done(sender: AnyObject) {
        sportsTVC.addNewSport(sportNameTF.text)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
