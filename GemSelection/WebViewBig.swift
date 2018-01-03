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
   
        
        func showToast(message : String) {
            
            let toastLabel = UILabel(frame: CGRect(x: 50, y: self.view.frame.size.height-150, width:self.view.frame.size.width-100 , height: 60))
            toastLabel.backgroundColor = UIColor.black.withAlphaComponent(1.0)
            toastLabel.textColor = UIColor.white
            toastLabel.textAlignment = .center;
            toastLabel.font = UIFont(name: "Montserrat-Light", size: 12.0)
            toastLabel.text = message
            toastLabel.alpha = 1.0
            toastLabel.numberOfLines=2
            toastLabel.layer.cornerRadius = 10.0;
            toastLabel.clipsToBounds  =  true
            self.view.addSubview(toastLabel)
            UIView.animate(withDuration: 4.0, delay: 0.08, options: .curveEaseOut, animations: {
                toastLabel.alpha = 0.0
            }, completion: {(isCompleted) in
                toastLabel.removeFromSuperview()
            })
        }
    
}
