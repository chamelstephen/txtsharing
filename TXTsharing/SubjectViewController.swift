//
//  SubjectViewController.swift
//  TXTsharing
//
//  Created by kento on 2016/05/28.
//  Copyright © 2016年 Kento Ohara. All rights reserved.
//

import UIKit

class SubjectViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var subjectcollectionview: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "Subject"
        
        let searchButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Search, target: self, action: "searchButtontapped:")
        
        //subjectcollectionview.registerClass(<#T##cellClass: AnyClass?##AnyClass?#>, forCellWithReuseIdentifier: "SubjectCell")
        
        subjectcollectionview.delegate = self
        subjectcollectionview.dataSource = self
        
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
    
    /*
     Cellが選択された際に呼び出される
     */
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        print("選択されたcell: \(indexPath.row)")
        
    }
    
    /*
     Cellの総数を返す
     */
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    /*
     Cellに値を設定する
     */
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell: UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("SubjectCell", forIndexPath: indexPath)
        
        let titlelabel: UILabel! = cell.viewWithTag(1) as! UILabel
        titlelabel.text? = String(indexPath.row)
        cell.backgroundColor? = UIColor.whiteColor()
        
        cell.layer.borderWidth = 0.1
        cell.layer.masksToBounds = false
        cell.layer.borderColor = UIColor.blackColor().CGColor
        cell.layer.cornerRadius = cell.frame.height/2
        cell.clipsToBounds = true
        
        return cell
    }
    
    func searchButtonTapped() {
        
    }

}
