//
//  TakeALookViewController.swift
//  TXTsharing
//
//  Created by kento on 2016/06/11.
//  Copyright © 2016年 Kento Ohara. All rights reserved.
//

import UIKit

class TakeALookViewController: UIViewController {

    
    let headerImage: UIImage! = UIImage(named: "img_mountain.png")//insert images by array in future
    @IBOutlet var myImageView: UIImageView!
    
    @IBOutlet var myNavigationBar: UINavigationBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myImageView.image = headerImage
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
