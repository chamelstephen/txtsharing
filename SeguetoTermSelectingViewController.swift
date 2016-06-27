//
//  SeguetoTermSelectingViewController.swift
//  TXTsharing
//
//  Created by kento on 2016/06/27.
//  Copyright © 2016年 Kento Ohara. All rights reserved.
//

import UIKit

class SeguetoTermSelectingViewController: UINavigationController {
    private var transitioner: CATransition?
    
    class func instantiate(point: CGPoint) -> SeguetoTermSelectingViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())//add storyboards in case
        let viewController = storyboard.instantiateViewControllerWithIdentifier("SelectTerms") as! SeguetoTermSelectingViewController
        viewController.transitioner = CATransition(style: .CircularReveal(point), viewController: viewController)
        return viewController
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
    
    //extension SelectTermsViewController {
    @IBAction func buttonTapped(sender: UIBarButtonItem) {
        transitioner = CATransition(style: .CircularReveal(sender.accessibilityActivationPoint), viewController: self)
        dismissViewControllerAnimated(true, completion: nil)
    }
    //}


}
