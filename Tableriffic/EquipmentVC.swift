//
//  EquipmentVC.swift
//  Tableriffic
//
//  Created by Mounika Ankam on 2/19/15.
//  Copyright (c) 2015 Mounika Ankam. All rights reserved.
//

import UIKit

class EquipmentVC: UIViewController {
    var image:UIImage!
    
    @IBOutlet weak var imageView2: UIImageView!
    @IBAction func done2(sender: AnyObject) {
        self.dismissViewControllerAnimated(true , completion: nil)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        imageView2.image = image
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
