//
//  RightPopUps.swift
//  GemSelection
//
//  Created by Abhishek on 7/10/17.
//  Copyright © 2017 ITS. All rights reserved.
//

import UIKit

class PaymentMethodPopUp: UIViewController {
    @IBAction func okBtn(_ sender: Any) {
        close()
           }


    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        self.showAnimate()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    func close(){
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.view.removeFromSuperview()
            }
        });
        

    }

    
}

//TestimonialPopUp::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

class TestimonailPopUp: UIViewController {
    
    @IBAction func closeBtn(_ sender: Any) {
        close()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        self.showAnimate()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    func close(){
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.view.removeFromSuperview()
            }
        });
        
        
    }
    
    
}

//DeliveryPopUP::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
class DeliveryPopUp: UIViewController {
    @IBAction func OkBtn(_ sender: Any) {
        close()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        self.showAnimate()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
     func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    func close(){
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.view.removeFromSuperview()
            }
        });
        
        
    }

}

//FAQPopUP:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
class FaqPopUp: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBAction func backBtn(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "faqrow", for: indexPath)
        return cell
    }

    
}

//AstrologyPopUp::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

class AstrologyPopUp: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let myurl = URL(string: "http://www.astropankaj.com/")
        let myurlreq = URLRequest(url: myurl!)
       webview.loadRequest(myurlreq)

    }
    @IBOutlet weak var webview: UIWebView!
    
    @IBAction func backBtn(_ sender: Any) {
        self.view.removeFromSuperview()
    }
 }

//Pujapopup::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

class PujaPopUp: UIViewController {
    var urlStrin = "http://www.vedmandirtrust.com/"
    override func viewDidLoad() {
        super.viewDidLoad()
        let myurl = URL(string: urlStrin)
        let myurlreq = URLRequest(url: myurl!)
        webview.loadRequest(myurlreq)
    }
    @IBAction func backBtn(_ sender: Any) {
        self.view.removeFromSuperview()
    }

    @IBOutlet weak var webview: UIWebView!
}

//FaaltuPopUp::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

class ImPopUp: UIViewController {
    
    @IBOutlet weak var imageview: UIImageView!
    @IBAction func closeBtn(_ sender: Any) {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.view.removeFromSuperview()
            }
        });

    }
    var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)

        imageview.image = image
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
    
    
    
    
    
}

