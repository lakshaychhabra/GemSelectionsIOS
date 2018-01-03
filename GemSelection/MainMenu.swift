//
//  MainMenu.swift
//  GemSelection
//
//  Created by Abhishek on 05/11/17.
//  Copyright © 2017 atlas. All rights reserved.
//

import UIKit
import MessageUI
class MainMenu: UITableViewController,MFMailComposeViewControllerDelegate {

    var rowIdentifierssection1 = ["loginrow","preciousgemstonerow","diamondrow","jwelleryrow","semipreciousgemsrow","triangulargemsrow","cabochonrow","birthstonesrow","gemstonesandastrologyrow","gemstonerecommendationrow","rudraksharow","handicraftsrow","perfumerow","stoneidolsrow","yantrarow","saphaticitemsrow","japamalarow","kavachrow","faqrow"]
    var rowIdentifierssection2 = ["connectwithusrow","callusrow","mailusrow","visitusrow"]
    var rowIdentifierssection3 = ["sharerow","rateapprow"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return rowIdentifierssection1.count
        case 1:
            return rowIdentifierssection2.count
        case 2:
            return rowIdentifierssection3.count
        default:
            return 3
        }
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var finalcell = UITableViewCell()
        
        if(indexPath.section == 0){
            let cell = tableView.dequeueReusableCell(withIdentifier: rowIdentifierssection1[indexPath.row], for: indexPath)
            finalcell = cell
        }
        if(indexPath.section == 1){
            let cell = tableView.dequeueReusableCell(withIdentifier: rowIdentifierssection2[indexPath.row], for: indexPath)
            finalcell = cell
            
        }
        if(indexPath.section == 2){
            let cell = tableView.dequeueReusableCell(withIdentifier: rowIdentifierssection3[indexPath.row], for: indexPath)
            finalcell = cell
            
        }
        return finalcell

    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1 {
            return "Contact"
        }
        if section == 2 {
            return "Spread The Word!"
        }
        else{
            return ""
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            if indexPath.row == 0{
                return 196
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
            if indexPath.row == 2{
            
                if MFMailComposeViewController.canSendMail(){
                    let mailVC = MFMailComposeViewController()
                    mailVC.mailComposeDelegate = self
                    mailVC.setToRecipients(["care@khannagems.com"])
                    revealViewController().revealToggle(animated: false)
                    self.revealViewController().frontViewController.present(mailVC, animated: true, completion: nil)
                }
                else{
                    self.revealViewController().frontViewController.showToast(message: "Mail App not Configured")
                }
            }
            }
            
        }
     func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        if result == .cancelled {
            print("cancel")
        }
        controller.dismiss(animated: true, completion: nil)
    }
    }



