//
//  ControllerViewController.swift
//  StuffedAnimalMortalKombat
//
//  Created by Aimee Bragg on 6/9/15.
//  Copyright (c) 2015 Aimee Bragg. All rights reserved.
//

import UIKit

class ControllerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Connector.sharedConnector().controller = self
        
        Connector.sharedConnector().startAdvertising()

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
