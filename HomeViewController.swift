//
//  HomeViewController.swift
//  TXTsharing
//
//  Created by kento on 2016/05/28.
//  Copyright © 2016年 Kento Ohara. All rights reserved.
//

import UIKit
import NCMB

class HomeViewController: UIViewController {
    
    //
    @IBOutlet var profileimage: UIImageView!
    var namestring: String = ""
    @IBOutlet var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "Home"
        
        //
        profileimage.layer.borderWidth = 0.1
        profileimage.layer.masksToBounds = false
        profileimage.layer.borderColor = UIColor.blackColor().CGColor
        profileimage.layer.cornerRadius = profileimage.frame.height/2
        profileimage.clipsToBounds = true
        
        namestring = "name"
        nameLabel.text = namestring
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
    // Logoutボタン押下時の処理
    @IBAction func logoutBtn(sender: UIButton) {
        NCMBUser.logOut()
        self.dismissViewControllerAnimated(true, completion: nil)
        print("ログアウトしました")
        
    }

}
