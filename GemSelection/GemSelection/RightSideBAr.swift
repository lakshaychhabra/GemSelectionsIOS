//
//  RightDideBAr.swift
//  GemSelection
//
//  Created by Abhishek on 7/10/17.
//  Copyright © 2017 ITS. All rights reserved.
//

import UIKit
class RightSideBarCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
}


class RightSideBar: UITableViewController {
 var items = [""]
 var ItemsMain = ["Payment Methods","Testimonials","Govt. Lab Certificates          >","About Shipment",
                  "Membership                           >","Astrology","puja","Frequently Asked Ques.",
                  "About                                      >","Exit"]
 var ItemsforGovt = ["<- Back","","","Natura Sapphire","Treated Sapphire","Heated Sapphire"]
 var ItemsforMembership = ["<- Back","ALL INDIA MANAGEMENT ASSOCIATIONS","INDIAN DIAMOND INSTITUTE","SURAT GEMOLOGY INSTITUTE"]
 var ItemsforAbout = ["<- Back","About Us","Management Team","Pankaj Khanna","Khanna Gems Pvt. Ltd.","Sonipat"]
 var backAvailable = 0
  var certiImages = [#imageLiteral(resourceName: "Natural-Sapphire"),#imageLiteral(resourceName: "Treated-Sapphire"),#imageLiteral(resourceName: "Heated-Sapphire")]
  var mamberImages = [#imageLiteral(resourceName: "all-india-management"),#imageLiteral(resourceName: "indian-diamond-institute"),#imageLiteral(resourceName: "surat-gemology-institute")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = ItemsMain
        backAvailable = 0
     }
    override func viewDidDisappear(_ animated: Bool) {
        items = ItemsMain
        backAvailable = 0
        self.tableView.reloadData()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath) as! RightSideBarCell
        cell.label.text = items[indexPath.row]
       return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
if backAvailable == 0 {
        if indexPath.row == 0{
            paymentPop()
        }
        if indexPath.row == 2 {
            items = ItemsforGovt
            backAvailable = 1
            self.tableView.reloadData()
        }
        if indexPath.row == 1 {
            testimonialPop()
        }
        if indexPath.row == 3 {
            dilevertPop()
        }
        if indexPath.row == 4 {
            items = ItemsforMembership
            backAvailable = 2
            self.tableView.reloadData()
        }
        if indexPath.row == 5 {
            astroPop()
        }
        if indexPath.row == 6 {
            pujaPop()
        }
        if indexPath.row == 7 {
            faqmodal()
        }
        if indexPath.row == 8 {
            items = ItemsforAbout
             backAvailable = 3
            self.tableView.reloadData()
           
        }
}
        
if backAvailable == 1 {
            if indexPath.row == 0{
                backAvailable = 0
                items = ItemsMain
                self.tableView.reloadData()
    }

    switch indexPath.row {
    case 3,4,5:
        whichImage = certiImages[indexPath.row-3]
        imPop()
    default:
        break
    }
    
        }
    
        
if backAvailable == 2 {
            if indexPath.row == 0{
                backAvailable = 0
                items = ItemsMain
                self.tableView.reloadData()
            }
            switch indexPath.row {
            case 1,2,3:
                whichImage = mamberImages[indexPath.row-1]
                imPop()
            default:
                break
            }

        }
        
if backAvailable == 3 {
            if indexPath.row == 0{
                backAvailable = 0
                items = ItemsMain
                self.tableView.reloadData()
            }
            
}
        
            
 
}

    func paymentPop(){
        
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "paymentpopup") as! PaymentMethodPopUp
        self.revealViewController().frontViewController.addChildViewController(popOverVC)
        popOverVC.view.frame = self.revealViewController().frontViewController.view.frame
        self.revealViewController().frontViewController.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        self.revealViewController().rightRevealToggle(animated: true)
    }
    func testimonialPop(){
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "testimonialpopup") as! TestimonailPopUp
        self.revealViewController().frontViewController.addChildViewController(popOverVC)
        popOverVC.view.frame = self.revealViewController().frontViewController.view.frame
        self.revealViewController().frontViewController.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        self.revealViewController().rightRevealToggle(animated: true)

    }
    func dilevertPop(){
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "deliverypopup") as! DeliveryPopUp
        self.revealViewController().frontViewController.addChildViewController(popOverVC)
        popOverVC.view.frame = self.revealViewController().frontViewController.view.frame
        self.revealViewController().frontViewController.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        self.revealViewController().rightRevealToggle(animated: true)
    }
    func faqmodal(){
    let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "faqview") as! FaqPopUp
        self.revealViewController().frontViewController.addChildViewController(popOverVC)
        popOverVC.view.frame = self.revealViewController().frontViewController.view.frame
        self.revealViewController().frontViewController.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        self.revealViewController().rightRevealToggle(animated: true)
 }
    func astroPop(){
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "astropopup") as! AstrologyPopUp
        self.revealViewController().frontViewController.addChildViewController(popOverVC)
        popOverVC.view.frame = self.revealViewController().frontViewController.view.frame
        self.revealViewController().frontViewController.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        self.revealViewController().rightRevealToggle(animated: true)
    }
    func pujaPop(){
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "pujapopup") as! PujaPopUp
        self.revealViewController().frontViewController.addChildViewController(popOverVC)
        popOverVC.view.frame = self.revealViewController().frontViewController.view.frame
        self.revealViewController().frontViewController.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        self.revealViewController().rightRevealToggle(animated: true)
    }
    var whichImage = UIImage()
    
    func imPop(){
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "impopup") as! ImPopUp
        popOverVC.image = whichImage
        self.revealViewController().frontViewController.addChildViewController(popOverVC)
        popOverVC.view.frame = self.revealViewController().frontViewController.view.frame
        self.revealViewController().frontViewController.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        self.revealViewController().rightRevealToggle(animated: true)
    }
    
   }
