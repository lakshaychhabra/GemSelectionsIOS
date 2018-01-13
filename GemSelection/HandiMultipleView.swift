//
//  HandiMultipleView.swift
//  GemSelection
//
//  Created by ITS on 7/2/17.
//  Copyright © 2017 ITS. All rights reserved.
//

import UIKit

class handimultipleviewcell: UITableViewCell {
    
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var headinglabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var redlabel: UILabel!
}

class HandiMultipleView: UITableViewController {
    var imagearray = [UIImage]()
    var headingarray = [""]
    var contentarray = [""]
    var redrowlabel = ""
    @IBAction func buyBtn(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "buynow")
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBOutlet weak var menuBtn: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.revealViewController() != nil {
            menuBtn.target = self.revealViewController()
            menuBtn.action = #selector
                (SWRevealViewController.revealToggle(_:))}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        else{
        return imagearray.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "labelrow", for: indexPath) as! handimultipleviewcell
            cell.redlabel.text = redrowlabel
            return cell            
        }
        
        else{
        let cell = tableView.dequeueReusableCell(withIdentifier: "potrow", for: indexPath) as! handimultipleviewcell
        cell.imageview.image = imagearray[indexPath.row]
        cell.headinglabel.text = headingarray[indexPath.row]
        cell.contentLabel.text = contentarray[indexPath.row]
        return cell
        }
    }
 
 
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           if indexPath.section == 0{
                return 59
            

        }
                else{
            return 467
        }
    }
    
    
    
    
    
    
    
    
       
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
