//
//  RudrakshaPopupView.swift
//  GemSelection
//
//  Created by abhishek chaudhary on 19/01/18.
//  Copyright © 2018 atlas. All rights reserved.
//

import UIKit

class RudrakshaPopupView: UIViewController {

    @IBOutlet weak var textview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        self.showAnimate()
        

    }
    @IBOutlet var wearrudrakshaTextview: UITextView!
    @IBOutlet var authenticityTextview: UITextView!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    
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
    
    func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
    }

//RBeadsPopUp:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

class RBeadsPopUp: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func watchVideoBtn(_ sender: Any) {
        
    }
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
