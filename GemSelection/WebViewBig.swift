//
//  WebViewBig.swift
//  GemSelection
//
//  Created by Abhishek Chaudhary on 03/01/18.
//  Copyright © 2018 atlas. All rights reserved.
//

import UIKit
import WebKit
var weburl = "https://khannagems.com/"
class WebViewBig: UIViewController {
    
    @IBOutlet weak var _webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let url = URL(string: weburl)
        let rrequest = URLRequest(url: url!)
        _webView.load(rrequest)
    }

}



extension UIViewController{
    func ShowWebView(urll: String){
        weburl = urll
        let vc = WebViewBig()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
