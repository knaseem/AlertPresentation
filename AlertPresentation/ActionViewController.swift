//
//  ActionViewController.swift
//  AlertPresentation
//
//  Created by Khalid Naseem on 27/06/2016.
//  Copyright © 2016 Khalid Naseem. All rights reserved.
//

import UIKit

class ActionViewController: UIViewController {
    
    @IBAction func showActionButtonTapped(sender: UIButton) {
        let alertController = UIAlertController(title: "Action Alert Example", message: "Message in Action alert dialog", preferredStyle:UIAlertControllerStyle.ActionSheet)
        let deleteAction = UIAlertAction(title: "Delete", style: UIAlertActionStyle.Destructive, handler: {(alert :UIAlertAction!) in
            print("User tapped Delete")
        })
        alertController.addAction(deleteAction)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {(alert :UIAlertAction!) in
            print("User tapped OK")
        })
        alertController.addAction(okAction)
        
        //MARK:  Below two lines added so iPad will not crash when clicked on Button
        alertController.popoverPresentationController?.sourceView = view
        alertController.popoverPresentationController?.sourceRect = sender.frame
        
        presentViewController(alertController, animated: true, completion: nil)

        
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
