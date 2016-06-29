//
//  TakeALookViewController.swift
//  TXTsharing
//
//  Created by kento on 2016/06/11.
//  Copyright © 2016年 Kento Ohara. All rights reserved.
//

import UIKit

class TakeALookViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    let headerImage: UIImage! = UIImage(named: "img_mountain.png")//insert images by array in future
    @IBOutlet var myImageView: UIImageView!
    
    @IBOutlet var myNoteBook: UITextView!
    
    @IBOutlet var myNoteTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        myNoteTableView.delegate = self
        myNoteTableView.dataSource = self
        myNoteTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "NoteBookCell")
        
        
        myImageView.image = headerImage
        
        myNoteBook.text = "卒業論文結論\n『暗夜行路』は主人公・時任謙作の複雑な人間関係や不条理に左右されながら歩んだ人生を描いた小説であった。ここで謙作の不条理という「暗夜」についてまとめる。\n謙作の最初の不条理は父との確執であった。これは謙作が母と祖父の間に生まれた子だということが原因である。謙作の戸籍上の父は謙作を冷遇し、謙作も父に敢えて懐くことはなかった。そうしたすれ違いの中で謙作は唯一自分を愛してくれた母親と死別する。父との確執は成長しても尚続き、謙作は父との関係性で大いに悩むことになるのである。\n祖父の家に引き取られ、青年になった謙作は偶然のき っかけから吉原に通う放蕩生活を始める。謙作はそこで出会った登喜子という女性に恋をして、登喜子に溺れてしまう。それはそれまで充分に親から愛情を受けられなかったことの裏返しと捉えることができる。しかしやがて吉原には虚飾の愛しか無いということに謙作は目を背けることができなくなってきてしまうのである。謙作はついにその現実を認めて、吉原通いから足を洗うのだ。\nその反省をするために謙作は尾の道で一人暮らしを始める。吉原通いで疎かになっていた作家業に集中するためだ。それと同時に今まで以上に恋愛対象として意識するようになっていたお栄から自分を遠ざけるという意図もあった。しかし尾の道での生活は謙作にとって孤独を強いるのである。そんな孤独から逃れたい一心で謙作は手紙でお栄にプロポーズする。だが孤独から逃れようとした先には謙作にとって苦々しい現実が待っているのであった。それは謙作の出生の秘密である。謙作のプロポーズに帰ってきた返事は謙作の出生の秘密が記された手紙であった。謙作は自分のアイデンティティーを見失い、自分という存在に絶望するのである。\nその後、京都に舞台は移る。謙作はそこで直子という女性に恋をして、二人は結婚するのである。全てが順風満帆かのように謙作は思った。しかし運命はそれでも謙作を刃を向けるのである。謙作と直子の第一子・直謙が生後暫くして死んでしまうのだ。謙作は父との確執から直謙に対してどうやって接すればよいかあまり分からず、謙作が直謙に父としての愛情を注ぐことはあまり無かった。それでも、謙作にとって直謙の死による精神的打撃は大きかった。直謙の死の捉え方が両親ともに分からず、謙作と直子の仲もちぐはぐになってしまうのである。\nそして遂に謙作にとって最大の試練が訪れる。それは直子の過ちだった。謙作の留守中に直子が要という親戚と密通してしまうのである。謙作はそれ以来ことあるごとに癇癪を起こすようになるのである。\nこのように謙作の人生には常に複雑な人間関係が絡み合って不条理・不遇な出来事に付きまとわれているのである。しかしこれらの出来事には父との確執を除くと全てにおいてとあるものがその出来事や事態を余計に複雑にしていると言うことができると思う。それは謙作の未熟な精神性である。この謙作の未熟な精神性が「暗夜行路」という謙作の人生をさらに「暗夜」めいたものにしていると考えることができると思う。\nただしその謙作の未熟な精神性の元凶は言うまでもなく謙作の父である。謙作の父が、謙作の出生に関する諸事情を乗り越えて父親としての器量を謙作に見せたのだとしたら、謙作はより利他的な性格になっていたかもしれない。しかし謙作の父は謙作の出生というものに捉われ過ぎてしまったため、謙作と父がその壁を乗り越えて父子として分かり合えなかったのだ。そうした父の不十分な謙作への姿勢、或いは愛情がより謙作を利己的・受動的に育てたと言える。\n謙作が最終的に受動の姿勢から能動の姿勢に転換する、或いは転換する兆しを見せたのは大山にて登山を途中でリタイアしたシーンである。それまでの「暗夜」、謙作の人生における苦難は常に不条理な事態にどう対処するかと同時に自分の未熟な精神性との戦いでもあったのである。それが余計に謙作を肉体的にも精神的にも疲労させていったと考えることができる。そこでその疲労からさらに不条理を感じるようになり、負のスパイラルが生まれていく。つまりこの負のスパイラルこそ、謙作の人生における「暗夜」の正体だと断定できる。\nでは如何にして謙作はその負のスパイラルから抜け出したのだろうか。その答えは大山における体験にある。竹さんの持つ寛大な心と妻（家族）への愛情を知ったこと、大きい自然に包まれて快感と幸福を感じたこと。竹さんの寛大な心、確固たる信念と頑固さ。全てを包み込む自然の大きさ、壮大さ。これらが不条理という負のスパイラルに慣れて、人生を「暗夜」だと思い込んでいた謙作を変えたと言える。尤もそこに至る過程で謙作の精神的な成長を志す向上心もあった。そして負のスパイラルから脱却することは「暗夜」の終止符を表した。\nそれでは謙作の求めた愛とは何だったのだろうか。それは謙作が何度も苦悩したように、謙作の周囲、或いは外には無かったと考えることができると思う。謙作は何度も愛を他人に求めては失敗を繰り返してきた。その求めていた愛は結局、謙作の内面にあったのである。即ちそれは謙作の心の奥底に封印されていた人を愛するという気持ちであると解釈できると思う。またその気持ちを謙作が認知する過程での精神的成長を志した向上心、また未熟な精神性を完全に認めるに至った直子からの指摘。これらが謙作を受動から能動の姿勢に変化させた。つまり謙作の求めていた愛は謙作自身の中にあったと結論づけることができる。\nこの結論によって謙作が愛を求める人生を通じて、志賀直哉が『暗夜行路』という作品に込めた思いが見えてくる。それは即ち人間は誰しもが人を能動的に愛するという気持ちが心底にはあり、それを当人が認知していなくてもきっかけがあればその気持ちを当人に認知させることができるという主張なのではないだろうか。人間を愛するという気持ちの普遍性だと言い換えることもできると思う。志賀直哉は読者へ、愛というものを充分に受けてこなかった者には謙作の人生を通じて希望を与え、他の人間を愛することの重要性に気づいていない者や充分に他の人間を愛していない者には他の人間を愛することで生まれる人間関係の絆や他の人間を愛するという行為そのものがその愛する相手にとっての救済になりうるということを説いている。"

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
    func tableView(tableView: UITableView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        print("選択されたcell: \(indexPath.row)")
        print("oh, yes")
        
    }
    
    /*
     Cellの総数を返す
     */
    func tableView(tableView: UITableView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    /*
     Cellに値を設定する
     */
    func tableView(tableView: UITableView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell! = tableView.dequeueReusableCellWithIdentifier("NoteBookCell", forIndexPath: indexPath)
        
        
        return cell
    }

}
