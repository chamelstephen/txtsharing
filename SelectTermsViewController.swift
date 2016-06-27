//
//  SelectTermsViewController.swift
//  TXTsharing
//
//  Created by kento on 2016/06/25.
//  Copyright © 2016年 Kento Ohara. All rights reserved.
//

import UIKit

class SelectTermsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    private var transitioner: Transitioner?
    
    class func instantiate(point: CGPoint) -> SelectTermsNavigationViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())//add storyboards in case
        let viewController = storyboard.instantiateViewControllerWithIdentifier("SelectTerms") as! SelectTermsNavigationViewController
        viewController.transitioner = Transitioner(style: .CircularReveal(point), viewController: viewController)
        return viewController
    }
    
    @IBOutlet var TermSelectCollectionView: UICollectionView!
    
    @IBOutlet var mybackgroundImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "Term"
        
        let searchButton: UIBarButtonItem! = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Search, target: self, action: "searchButtontapped:")
        
        TermSelectCollectionView.delegate = self
        TermSelectCollectionView.dataSource = self
        
        //setting of the background effect
        
        // ブラーエフェクトを生成（ここでエフェクトスタイルを指定する）
        let blurEffect = UIBlurEffect(style: .Light)
        // ブラーエフェクトからエフェクトビューを生成
        let visualEffectView = UIVisualEffectView(effect: blurEffect)
        // エフェクトビューのサイズを指定（オリジナル画像と同じサイズにする）
        visualEffectView.frame = mybackgroundImage.bounds
        // 画像にエフェクトビューを貼り付ける
        mybackgroundImage.addSubview(visualEffectView)
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
            transitioner = Transitioner(style: .CircularReveal(sender.accessibilityActivationPoint), viewController: self)
            dismissViewControllerAnimated(true, completion: nil)
        }
    //}
    
    /*
     Cellが選択された際に呼び出される
     */
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        print("選択されたcell: \(indexPath.row)")
        print("oh, yes")
        
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
        
        let cell: UICollectionViewCell! = collectionView.dequeueReusableCellWithReuseIdentifier("TermCell", forIndexPath: indexPath)
        
        cell.backgroundColor? = UIColor.clearColor()//clear the background
        cell.layer.borderColor? = UIColor.clearColor().CGColor
        
        let titlelabel: UILabel! = cell.viewWithTag(1) as! UILabel//create label
        titlelabel.text? = String(indexPath.row)
        
        
        
        let titlebutton: UIButton! = cell.viewWithTag(2) as! UIButton//create button
        //titlebutton.title? = String(indexPath.row)
        
        //customize buttons' size and shape
        titlebutton.layer.borderWidth = 0.1
        titlebutton.layer.masksToBounds = false
        titlebutton.layer.borderColor = UIColor.blackColor().CGColor
        titlebutton.layer.cornerRadius = titlebutton.frame.height/2
        titlebutton.clipsToBounds = true
        
        
        return cell
    }
    
    func searchButtonTapped() {
        
    }
}
