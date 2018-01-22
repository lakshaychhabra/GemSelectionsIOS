//
//  ExtraClasses.swift
//  GemSelection
//
//  Created by ITS on 7/5/17.
//  Copyright © 2017 ITS. All rights reserved.
//

import UIKit
import MapKit

class Buynow: UIViewController {

    @IBOutlet weak var webview: UIWebView!
        override func viewDidLoad() {
        super.viewDidLoad()
     let myurl = URL(string: "http://khannagems.com/")
    let myurlreq = URLRequest(url: myurl!)
       webview.loadRequest(myurlreq)
        
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
            UIView.animate(withDuration: 0.25, animations: {
                self.view.alpha = 1.0
                self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            });

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func backBtn(_ sender: Any) {
   self.view.removeFromSuperview()
        
    }}




