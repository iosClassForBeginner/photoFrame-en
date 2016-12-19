//
//  ViewController.swift
//  photoFrame-en
//
//  Created by Wataru Maeda on 2016/12/16.
//  Copyright © 2016 Wataru Maeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet var myScroll: UIScrollView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Specify x-axis, y-axis, width, height of the photo frame
        var x = 0 as CGFloat
        let y = 0 as CGFloat
        let w = myScroll.frame.size.width
        let h = myScroll.frame.size.height
        
        // 1st photo
        let myImageView1 = UIImageView()
        myImageView1.frame = CGRect(x: x, y: y, width: w, height: h)
        myImageView1.image = UIImage(named: "your-photo-1.jpg")
        myImageView1.contentMode = .scaleAspectFill
        myImageView1.clipsToBounds = true
        myScroll.addSubview(myImageView1)
        
        // 2nd photo
        x += w
        let myImageView2 = UIImageView()
        myImageView2.frame = CGRect(x: x, y: y, width: w, height: h)
        myImageView2.image = UIImage(named: "your-photo-2.jpg")
        myImageView2.contentMode = .scaleAspectFill
        myImageView2.clipsToBounds = true
        myScroll!.addSubview(myImageView2)
        
        // 3rd photo
        x += w
        let myImageView3 = UIImageView()
        myImageView3.frame = CGRect(x: x, y: y, width: w, height: h)
        myImageView3.image = UIImage(named: "your-photo-3.jpg")
        myImageView3.contentMode = .scaleAspectFill
        myImageView3.clipsToBounds = true
        myScroll.addSubview(myImageView3)
        
        // Specify scroll bounds (3 times wider than original width due to usage of 3 photos)
        myScroll.contentSize.width = w * 3
        
        // Paging enabled
        myScroll.isPagingEnabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

