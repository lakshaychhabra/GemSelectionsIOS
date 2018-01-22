//
//  KavachView.swift
//  GemSelection
//
//  Created by Abhishek on 7/10/17.
//  Copyright © 2017 ITS. All rights reserved.
//

import UIKit
class cell: UITableViewCell {
    
    @IBOutlet weak var shpBtn: UIButton!
}
class KavachView: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if self.revealViewController() != nil {
            menuBtn.target = self.revealViewController()
            menuBtn.action = #selector
                (SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    @IBOutlet weak var menuBtn: UIBarButtonItem!

    @IBAction func menuBtn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "buynow")
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func shopNowBtn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "buynow")
        self.present(controller, animated: true, completion: nil)
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "imagerow", for: indexPath) as! cell
            cell.shpBtn.layer.cornerRadius = 4.0
            cell.shpBtn.layer.borderWidth = 3.0
            cell.shpBtn.layer.borderColor = (UIColor.orange).cgColor
        return cell
    }
        else{
            let  cell = tableView.dequeueReusableCell(withIdentifier: "textrow", for: indexPath)
            return cell
            
        }

    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 150
        }
        else{
            return 3150
        }
    }
}
