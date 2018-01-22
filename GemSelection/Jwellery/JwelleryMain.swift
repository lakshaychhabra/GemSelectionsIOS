//
//  JwelleryMain.swift
//  GemSelection
//
//  Created by abhishek chaudhary on 19/01/18.
//  Copyright © 2018 atlas. All rights reserved.
//

import UIKit

class JwelleryMain: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 240
    }



    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "webrowinjwellery", for: indexPath) as! WebRowInJwellery
            cell._labelAboutJwellery.text = ""
            
            return cell
        } else {
           
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "optionsrowinjwellery", for: indexPath) as! OptionsRowInJwellery
         cell._btnCreateyourownJwellery.layer.borderColor = UIColor.black.cgColor
        cell._btnCreateyourownJwellery.layer.borderWidth = 1.0
        cell._btnGemStudded.layer.borderColor = UIColor.black.cgColor
        cell._btnGemStudded.layer.borderWidth = 1.0
        cell._btnDiamondJwellery.layer.borderColor = UIColor.black.cgColor
        cell._btnDiamondJwellery.layer.borderWidth = 1.0
        cell._btnVictorianJwellery.layer.borderColor = UIColor.black.cgColor
        cell._btnVictorianJwellery.layer.borderWidth = 1.0
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 252
        }
        else{
            return 375
        }
    }
 

   
}

class WebRowInJwellery: UITableViewCell {
    @IBOutlet weak var _webView: UIWebView!
    @IBOutlet weak var _labelAboutJwellery: UILabel!
    
}

class OptionsRowInJwellery: UITableViewCell {
    @IBOutlet weak var _btnGemStudded: UIButton!
    @IBOutlet weak var _btnCreateyourownJwellery: UIButton!
    @IBOutlet weak var _btnDiamondJwellery: UIButton!
    @IBOutlet weak var _btnVictorianJwellery: UIButton!
    @IBAction func diamondJwellery(_ sender: Any) {
        whichJwellery = 1
    }
    @IBAction func victorianJwellery(_ sender: Any) {
        whichJwellery = 2
    }
    @IBAction func gemStuddedJwellery(_ sender: Any) {
        whichJwellery = 3
    }
    
}


class DesignYourOwnJwellery: UIViewController{
    override func viewDidLoad() {
        
    }
    @IBAction func btnAction(_ sender: Any) {
        let vc = DesignJwellery()
        if isPhoto == true {
            isPhoto = false
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
