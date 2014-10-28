//
//  ViewController.swift
//  UIScrollView-Sample
//
//  Created by maezawa on 2014/10/28.
//  Copyright (c) 2014年 hirokazu maezawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //UIImageに画像の名前を指定します
        let img1 = UIImage(named:"img1.jpg");
        let img2 = UIImage(named:"img2.jpg");
        let img3 = UIImage(named:"img3.jpg");
        
        //UIImageViewにUIIimageを追加
        let imageView1 = UIImageView(image:img1)
        let imageView2 = UIImageView(image:img2)
        let imageView3 = UIImageView(image:img3)
        
        //UIScrollViewを作成します
        let scrView = UIScrollView()
        
        //表示位置 + 1ページ分のサイズ
        scrView.frame = CGRectMake(50, 50, 240, 240)
        
        //全体のサイズ
        scrView.contentSize = CGSizeMake(240*3, 240)
        
        //UIImageViewのサイズと位置を決めます
        //左右に並べる
        imageView1.frame = CGRectMake(0, 0, 240, 240)
        imageView2.frame = CGRectMake(240, 0, 240, 240)
        imageView3.frame = CGRectMake(480, 0, 240, 240)
        
        //UIImageViewのサイズと位置を決めます
        //上下に並べる
        //imageView1.frame = CGRectMake(0, 0, 240, 240)
        //imageView2.frame = CGRectMake(0, 240, 240, 240) //変更箇所
        //imageView3.frame = CGRectMake(0, 480, 240, 240) //変更箇所
        
        //viewに追加します
        self.view.addSubview(scrView)
        scrView.addSubview(imageView1)
        scrView.addSubview(imageView2)
        scrView.addSubview(imageView3)
        
        // １ページ単位でスクロールさせる
        scrView.pagingEnabled = true
        
        //scroll画面の初期位置
        scrView.contentOffset = CGPointMake(0, 0);
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

