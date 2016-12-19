# Code Togather: Let's make iPhone app in an hour

  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/photoFrame-en/blob/master/Resourses/sample.gif" /></div>
  
  Thank you for visiting our account. We are going to make a simple photo frame app in an hour. If would you like to study yourself before hands-on, or review what you have learned in the session, please use the following material.
  
## We are providing free hands-on on a monthly basis
  Meetup  
  https://www.meetup.com/iOS-Development-Meetup-for-Beginner/
  
## We also hold face-to-face or group lesson for indivisual interested in making iOS app themselves
  http://ios-class-for-beginner.esy.es/

## Development Environment
  XCode 8.1 / Swift 3

## Full procedure

#### 0, Create your project

> 0-1. Open XCode  
  
> 0-2. Select "Create a new XCode project"
  
> 0-3. Select "Single View Application" and then tap "Next"
  
> 0-4. Fill "Product name" and then tap "Next"
  
> 0-5. Select the place for saving your project and then tap "Create"

#### 1, Collect photos → Drag & Drop your photos into your project
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/photoFrame-en/blob/master/Resourses/0.png" /></div>
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/photoFrame-en/blob/master/Resourses/0.gif" /></div>

#### 2, Design app
> 2-1. Drap & Drop "UIScrollView" from UI components
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/photoFrame-en/blob/master/Resourses/1.gif" /></div>

> 2-2. Resize ScrollView
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/photoFrame-en/blob/master/Resourses/2.gif" /></div>

> 2-3. Set "Autoresizing" for adjusting frame depending on devices
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/photoFrame-en/blob/master/Resourses/3.gif" /></div>

> 2-4. Connect UI components on Storyboard to ViewController.swift
  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/photoFrame-en/blob/master/Resourses/4.gif" /></div>

#### 3, Add code blocks in ViewController.swift
<span style="color:red"> It's preferable to write following code yourself. It will help you to understand code more.</span>
  
```Swift  
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
```
