//
//  ViewController.swift
//  HFBrowse
//
//  Created by fuhi1983 on 2015/03/07.
//  Copyright (c) 2015年 sample. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var barBackgroundView: UIView!
    var webView:WKWebView
    
    required init(coder aDecoder: NSCoder) {
        self.webView = WKWebView(frame: CGRectZero)
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        barBackgroundView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 30)
        view.addSubview(webView)
        
        // 制約
        webView.setTranslatesAutoresizingMaskIntoConstraints(false)
        let widthConstraint = NSLayoutConstraint(item: webView, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 1, constant: 0)
        view.addConstraint(widthConstraint)
        let heightConstraint = NSLayoutConstraint(item: webView, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 1, constant: 0)
        view.addConstraint(heightConstraint)
        
        // load
        let URL = NSURL(string: "http://www.yahoo.co.jp")
        let request = NSURLRequest(URL: URL!)
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        
        barBackgroundView.frame = CGRect(x: 0, y: 0, width: size.width, height: 30)
    }
}

