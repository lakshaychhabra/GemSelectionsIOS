//
//  ReturnPlicyViewController.swift
//  GemSelection
//
//  Created by Bhavin on 05/06/18.
//  Copyright © 2018 atlas. All rights reserved.
//

import UIKit
import WebKit

class ReturnPlicyViewController: UIViewController, WKUIDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "ps://www.apple.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)

        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
