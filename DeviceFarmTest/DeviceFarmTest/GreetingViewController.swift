//
//  GreetingViewController.swift
//  DeviceFarmTest
//
//  Created by Abhishek Mishra on 26/02/2017.
//  Copyright © 2017 ASM Technology Ltd. All rights reserved.
//

import UIKit

class GreetingViewController: UIViewController {

    var welcomeMessage:String?
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let welcomeMessage = welcomeMessage {
            welcomeLabel.text = welcomeMessage
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
