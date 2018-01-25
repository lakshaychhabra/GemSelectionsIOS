//
//  SideBarRudraksh.swift
//  GemSelection
//
//  Created by abhishek chaudhary on 19/01/18.
//  Copyright © 2018 atlas. All rights reserved.
//

import UIKit

class SideBarRudraksh: UITableViewController {

    var identifysection1 = ["1","2","3","4","5","6","7"]
    var identifysection2 = ["8","9","10","11"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return identifysection1.count
        }
            else{
                return identifysection2.count
            }
        }


        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            if indexPath.section == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifysection1[indexPath.row], for: indexPath)
        return cell
            }
                else{
                let cell1 = tableView.dequeueReusableCell(withIdentifier: identifysection2[indexPath.row], for: indexPath)
                return cell1
                }
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                return 146
            }
            else{
                return 44
            }
        }
            else{
                return 44
            }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            switch  indexPath.row {
            case 0:
                mantra()
            case 1:
                howtowear()
            case 2:
                authenticity()
            case 3:
                faq()
            default: break
            }
        }
    }
   
    
    
    
    func mantra(){

        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Mantrapopupview") as! RudrakshaPopupView
        self.revealViewController().frontViewController.addChildViewController(popOverVC)
        popOverVC.view.frame = self.revealViewController().frontViewController.view.frame
        self.revealViewController().frontViewController.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        self.revealViewController().revealToggle(animated: true)
    }
    
    func howtowear(){
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "wearpopup") as! RudrakshaPopupView
        self.revealViewController().frontViewController.addChildViewController(popOverVC)
        popOverVC.view.frame = self.revealViewController().frontViewController.view.frame
        self.revealViewController().frontViewController.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        self.revealViewController().revealToggle(animated: true)
    }
    
    func authenticity(){
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "authenticitypopup") as! RudrakshaPopupView
        self.revealViewController().frontViewController.addChildViewController(popOverVC)
        popOverVC.view.frame = self.revealViewController().frontViewController.view.frame
        self.revealViewController().frontViewController.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        self.revealViewController().revealToggle(animated: true)

        
    }
    
    
    func faq(){
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "faqpopup") as! RudrakshaPopupView
        self.revealViewController().frontViewController.addChildViewController(popOverVC)
        popOverVC.view.frame = self.revealViewController().frontViewController.view.frame
        self.revealViewController().frontViewController.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        self.revealViewController().revealToggle(animated: true)

    }
    
    
    
    
    
    
        
      }

