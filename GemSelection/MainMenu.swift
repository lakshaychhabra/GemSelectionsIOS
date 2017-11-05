//
//  MainMenu.swift
//  GemSelection
//
//  Created by Abhishek on 05/11/17.
//  Copyright © 2017 atlas. All rights reserved.
//

import UIKit

class MainMenu: UITableViewController {

    var rowIdentifierssection1 = ["loginrow","homerow","rudraksharow","japamalarow","handicraftsrow","stoneidolsrow","ittarrow","yantrarow","kavachrow","saphaticitemsrow","triangulargemsrow","semipreciousgemsrow","birthstonesrow","diamondrow","jwelleryrow","faqrow"]
    var rowIdentifierssection2 = ["callusrow","mailusrow","visitusrow","findusrow"]
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

   

}
