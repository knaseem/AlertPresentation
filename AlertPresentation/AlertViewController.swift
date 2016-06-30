//
//  AlertViewController.swift
//  AlertPresentation
//
//  Created by Khalid Naseem on 27/06/2016.
//  Copyright © 2016 Khalid Naseem. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {
               override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAlertButtonTapped(sender: UIButton) {
        
        let alertController = UIAlertController(title: "Alert View Example", message: "Message in alert dialog", preferredStyle:UIAlertControllerStyle.Alert)
        
        let deleteAction = UIAlertAction(title: "Delete", style: UIAlertActionStyle.Destructive, handler: {(alert :UIAlertAction!) in
            print("User tapped Delete")
        })
        alertController.addAction(deleteAction)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {(alert :UIAlertAction!) in
            print("User tapped OK")
        })
        alertController.addAction(okAction)
        
        presentViewController(alertController, animated: true, completion: nil)
        
        
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
