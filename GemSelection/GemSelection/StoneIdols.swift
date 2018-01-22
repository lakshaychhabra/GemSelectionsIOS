//
//  StoneIdols.swift
//  GemSelection
//
//  Created by ITS on 7/4/17.
//  Copyright © 2017 ITS. All rights reserved.
//

import UIKit

class StoneIdols: UITableViewController {
    
    @IBAction func buyBtn(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "buynow") as! Buynow
        self.revealViewController().frontViewController.addChildViewController(popOverVC)
        popOverVC.view.frame = self.revealViewController().frontViewController.view.frame
        self.revealViewController().frontViewController.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        
    }
    @IBOutlet weak var menuBtn: UIBarButtonItem!
    var identify = ["0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"]
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
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return identify.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row ==  0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "0", for: indexPath)
            return cell
        }
        
        else{
        let cell = tableView.dequeueReusableCell(withIdentifier: identify[indexPath.row], for: indexPath)
        return cell
       }
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 164
        }
        else{
            return 458
        }
    }

}
