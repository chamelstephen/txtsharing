//
//  NotificationTableViewController.swift
//  TXTsharing
//
//  Created by kento on 2016/09/10.
//  Copyright © 2016年 Kento Ohara. All rights reserved.
//

import UIKit
import NCMB

class NotificationTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var NotificationTableView: UITableView!
    
    var NotificationTextArray: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        NotificationTableView.dataSource = self
        NotificationTableView.delegate = self
        
        var nib = UINib(nibName: "NotificationTableViewCell", bundle: nil)
        NotificationTableView.registerNib(nib, forCellReuseIdentifier: "NotificationCell")
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
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NotificationTextArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("NotificationCell", forIndexPath: indexPath) as! UITableViewCell!
        
        /*
         var NotificationTextView: UITextView!
         NotificationTextView.text = NotificationTextArray[indexPath.row]
         */
        
        return cell
    }
    
    func tableview(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
}
