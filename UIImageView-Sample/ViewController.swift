//
//  ViewController.swift
//  UIImageView-Sample
//
//  Created by maezawa on 2014/10/22.
//  Copyright (c) 2014年 hirokazu maezawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    // ベース画像.
    let myInputImage = CIImage(image: UIImage(named: "img.png"))
    
    // ImageView.
    var myImageView: UIImageView!
    
    // ボタン.
    let myButton: UIButton = UIButton()
    

    
//    ScrollView-Smaple.swift
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //UIImageに画像の名前を指定します
        let img1 = UIImage(named:"img1.jpg");
        let img2 = UIImage(named:"img2.jpg");
        let img3 = UIImage(named:"img3.jpg");
        let img4 = UIImage(named:"img1.jpg");
        let img5 = UIImage(named:"img2.jpg");
        let img6 = UIImage(named:"img3.jpg");
        
        //UIImageViewにUIIimageを追加
        let imageView1 = UIImageView(image:img1)
        let imageView2 = UIImageView(image:img2)
        let imageView3 = UIImageView(image:img3)
        let imageView4 = UIImageView(image:img4)
        let imageView5 = UIImageView(image:img5)
        let imageView6 = UIImageView(image:img6)

        //UIScrollViewを作成します
        let scrView = UIScrollView()
        //表示位置 + 1ページ分のサイズ
        scrView.frame = CGRectMake(50, 50, 240, 240)
        //全体のサイズ
        scrView.contentSize = CGSizeMake(240, 240*3)
        
        //UIImageViewのサイズと位置を決めます
//        imageView1.frame = CGRectMake(0, 0, 240, 240)
//        imageView2.frame = CGRectMake(240, 0, 240, 240)
//        imageView3.frame = CGRectMake(480, 0, 240, 240)
        imageView4.frame = CGRectMake(0, 0, 240, 240)
        imageView5.frame = CGRectMake(0, 240, 240, 240)
        imageView6.frame = CGRectMake(0, 480, 240, 240)
        //viewに追加します
        self.view.addSubview(scrView)
//        scrView.addSubview(imageView1)
//        scrView.addSubview(imageView2)
//        scrView.addSubview(imageView3)
        scrView.addSubview(imageView4)
        scrView.addSubview(imageView5)
        scrView.addSubview(imageView6)
        // １ページ単位でスクロールさせる
        scrView.pagingEnabled = true
        //scrView.scrollEnabled = true

        
        //scroll画面の初期位置
        scrView.contentOffset = CGPointMake(0, 0);
        
        
        /////////// FirstViewPosition ///////////
        
        
//        let scrView = UIScrollView()
//        scrView.frame = CGRectMake(50, 50, 240, 240)
//        scrView.contentSize = CGSizeMake(240*3, 240)
//        
//        //UIImageViewのサイズと位置を決めます
//        imageView1.frame = CGRectMake(0, 0, 240, 240)
//        imageView2.frame = CGRectMake(240, 0, 240, 240)
//        imageView3.frame = CGRectMake(480, 0, 240, 240)
//        
        
        /////////// Normal & StopView ///////////


//        scrView.pagingEnabled = true // ページするオプションを有効にするための設定
//        scrView.scrollEnabled = true
//        scrView.directionalLockEnabled = true
//        scrView.showsHorizontalScrollIndicator = false
//        scrView.showsVerticalScrollIndicator = true
//        scrView.bounces = true
//        scrView.scrollsToTop = false
//        scrView.delegate = self


    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

