//
//  HandicraftsPots.swift
//  GemSelection
//
//  Created by ITS on 7/2/17.
//  Copyright © 2017 ITS. All rights reserved.
//

import UIKit
class PotRow: UITableViewCell {
    @IBOutlet weak var potImageView: UIImageView!
    @IBOutlet weak var potContentLabel: UILabel!
    @IBOutlet weak var headingLabel: UILabel!
    @IBOutlet weak var backview: UIView!
    
}

class HandicraftsPots: UITableViewController {
    
    @IBAction func buyBtn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "buynow")
        self.present(controller, animated: true, completion: nil)
    }
    @IBOutlet weak var menuBtn: UIBarButtonItem!
var potimages = [#imageLiteral(resourceName: "Candle-Holder-HGL01"),#imageLiteral(resourceName: "Flower-Pot-HGL02"),#imageLiteral(resourceName: "Flower-Pot-HGL03"),#imageLiteral(resourceName: "FlowerPot-HGL04"),#imageLiteral(resourceName: "Marble-Glass-HGL-5"),#imageLiteral(resourceName: "Flower-Pot-HGL06"),#imageLiteral(resourceName: "Flower-pot-HGL07"),#imageLiteral(resourceName: "Flower-Pot-HGL08"),#imageLiteral(resourceName: "Flower-Pot-HGL09")]
    
    var potheading = ["Code : HGL 01","Code : HGL 02","Code : HGL 03","Code : HGL 04","Code : HGL 05","Code : HGL 06","Code : HGL 07","Code : HGL 08","Code : HGL 09"]
    var potcontent = ["A Candle Holder  made of marble with rich colours including 24 k Gold.  A beautiful piece for decoration or for gifting.\nWeight  :  450 grams\nHeight   :  5 \"\nBreadth  :  2 \"\n\nPrice  :  Rs 750.00/-","A flower pot  made of marble with rich Colours including 24 k Gold.  A beautiful piece to own or gift.\nWeight  :  750  grams \nHeight   :  8 \"\nBreadth  :  4.5 \"\n\nPrice  :  Rs 3250.00/-","A flower pot made of marble with rich Colours including 24 k Gold.  A beautiful piece for decoration and for gifting.\nWeight  :  700  grams \nHeight   :  7\"\nBreadth  :  5.5\"\n\nPrice  :  Rs 3250.00/-","A flower pot made of marble with rich Colours including 24 k Gold.  A beautiful piece for decoration and for gifting.\nWeight  :  705  grams \nHeight   :  5 \"\nBreadth  :  4\"\n\nPrice  :  Rs 3250.00/-","A Container made of marble with rich Colours including 24 k Gold.  A beautiful piece for decoration and for gifting.\nWeight  :  300  grams \nHeight   :  4  \"\nBreadth  :  3 \"\n\nPrice  :  Rs 1350.00/-","A Container made of marble with rich Colours including 24 k Gold.  A beautiful piece for decoration and for gifting.\nWeight  :  170  grams \nHeight   :  2.5  \"\nBreadth  :  3\"\n\nPrice  :  Rs 850.00/-","A Container made of marble with rich Colours including 24 k Gold.  A beautiful piece for decoration and for gifting.\nWeight  :  850  grams \nHeight   :  5 \"\nBreadth  :  5 \"\n\nPrice  :  Rs 1650.00/-","A Container made of marble with rich Colours including 24 k Gold.  A beautiful piece for decoration and for gifting.\nWeight  :  700  grams\nHeight   :  5\"\nBreadth  :   \"\n\nPrice  :  Rs 1650.00/-","A Container made of marble with rich Colours including 24 k Gold.  A beautiful piece for decoration and for gifting.\nWeight  :  430  grams \nHeight   :  4\"\nBreadth  :  4\"\n\nPrice  :  Rs 1350.00/-"]
    
    
    
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
        return potimages.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "pot1stcell", for: indexPath)
              return cell
        }
        else{
        let cell = tableView.dequeueReusableCell(withIdentifier: "potcontentcell", for: indexPath) as! PotRow
        cell.potImageView.image = potimages[indexPath.row]
        cell.potContentLabel.text = potcontent[indexPath.row]
         cell.headingLabel.text = potheading[indexPath.row]
            cell.backview.layer.cornerRadius = 10.0
        return cell
        }
   }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 87
        }
        else{
            return 454
        }
    }

    }
