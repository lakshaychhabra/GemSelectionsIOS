//
//  SemiPreciousGems.swift
//  GemSelection
//
//  Created by abhishek chaudhary on 16/01/18.
//  Copyright © 2018 atlas. All rights reserved.
//

import UIKit
import DropDown
class SemiPreciousGems: UITableViewController {
var semiGemsNames = ["Amethyst (Katela)","Aquamarine (Beruj)","Black Onyx (Cabochon)","Black Onyx (Cut)","Black Rainbow","Black Star","BlueTopaz","Beruj","Citrine","Chandramani","Dhunela","Feroja","Garnet (Tamara)","Golden Topaz (Citrine)","Green Amethyst","Green Fluorite","Green Garnet (Vasonite)","Green Onyx","Green Tourmaline","Iolite (Kaka Neeli)","Jade","Kateala","Kakaneeli","Kyanite","Labrolite","Lajwrat","Lapis Lazuli (Lajwrat)","Lemon Topaz","Malachite","Moonstone (Chandra Mani)","Opal","Onyx","Peridot","Pink Tourmaline","Red Onyx (Cabochon)","Red Onyx (Cut)","Rhodolite Garnet (Cut)","Rose Quartz","Smoky Topaz (Dhunela)","Star Ruby (Surya Kant    Mani)","Sunehala","Sang e Maryam","Suryakantmani","Tamara","Tiger's Eye","Turquoise (Feroza)","Vasonite","White Coral","White Quartz","White Rainbow","White Topaz","Zircon"]
    var semiGemsDetail = [""]
    let dropDown = DropDown()
    var whichSemipreciousGem:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        dropDown.dataSource = semiGemsNames
        if self.revealViewController() != nil {
            menuBtn.target = self.revealViewController()
            menuBtn.target = self.revealViewController()
            menuBtn.action = #selector
                (SWRevealViewController.rightRevealToggle(_:))
            menuBtn.action = #selector
                (SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            print("Selected item: \(item) at index: \(index)")
            self.whichSemipreciousGem = index
            self.tableView.reloadData()
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        semiGemsDetail = ["<p align=\"left\"><font color=\"Green\" size=\"2\"><u><h1>Amethyst</h1></u>Amethyst( Kateala), Code: ASP 15 (FOR ANY QUERY ON AMETHYST CALL 0091 - 9213932017) Amethyst is a beautiful Gemstone which is Violet-Purple in colour. It has an excellent lustre and transparency.It is traditionally considered, a great help, in getting rid of intoxication. It is even said that if you drink wine in a cup made of Amethyst, it will loose its intoxicating effect. This stone is believed to heal females suffering from gynecological problems. I have been using this Gem for its healing properties since many years. When I did courses in Pranic Healing in 1998 the Healing powers of this Gemstone became more clear to me and I have discovered that its rays can transform the depressed minds and all kinds of mental problems can be healed by this Gemstone. The people who get agitated fast can be relieved of their behavioral problems by the use of this Gem. <br><br>Amethyst can be used by people involved in occult sciences, as it is said to have strong spiritual powers. The Greeks believed that use of this Gem gave un-ending love and affection. Amethyst is a BIRTHSTONE of people born in February but others may also wear it. This gem is useful in controlling one's tendency of getting distracted, switching so often from one activity to the other. Since it brings about financial stability, it is of great help to those who find it difficult to manage their financial affairs. <br><br>This Gemstone is a great help to people with broken hearts and those suffering from loneliness. Nine Gems of Amethyst, with a strong Aura, if worn in a bracket can protect the wearer from Evil Eye.<br><br><a href=\"http://www.astropankaj.com/\">Pankaj Khanna<br>Astrologer</a><br><br>Who should wear an Amethyst?<br>Benefits of Wearing an Amethyst?<br>Mantra for Amethyst<br>How to wear an Amethyst<br>Finger for Amethyst<br>When to wear an Amethyst?<br><br><br><font color=\"Blue\" size=\"2\">Amethyst Rs. 150.00 Per Ratti.<br>Weight Available 3.25 Rt. to 21.25 Rt.<br><br><font color=\"Green\" size=\"2\"><li>Category : Mineral variety</li><li>Crystal system : rhombohedral class 32</li><li>Crystal habit : 6-sided prism ending in 6-sided pyramid (typical)</li><li>Color: Colorless, Purple, violet</li><li>Chemical formula : Silica (silicon dioxide, SiO2)</li><li>Twinning : Dauphine law, Brazil law, and Japan law</li><li>Mohs scale hardness : 7–lower in impure varieties</li><li>Luster : Vitreous/glossy</li><li>Streak : White</li><li>Specific gravity : 3.49–3.57</li><li>Diaphaneity : Transparent to translucent</li><li>Optical properties : Uniaxial (+)</li><li>Refractive index : 1.543–1.553, 1.552–1.554</li><li>Solubility : insoluble in common solvents</li><li>Melting point : 1650±75 °C</li><li>Fracture : Conchoidal</li><li>Cleavage : None</li><br><br><form name=f1>Weight : INR<bri>-3.25 Ratti Rs. 487.00 INR<br>4.25 Ratti Rs. 637.00 INR<br>5.25 Ratti Rs. 787.00 INR<br>6.25 Ratti Rs. 937.00 INR<br>7.25 Ratti Rs. 1087.00 INR<br>8.25 Ratti Rs. 1237.00 INR<br>9.25 Ratti Rs. 1387.00 INR<br>10.25 Ratti Rs. 1537.00 INR<br>11.25 Ratti Rs. 1687.00 INR<br>12.25 Ratti Rs. 3675.00 INR<br>13.25 Ratti Rs. 3975.00 INR<br>14.25 Ratti Rs. 4275.00 INR<br>15.25 Ratti Rs. 4575.00 INR<br>16.25 Ratti Rs. 4875.00 INR<br>17.25 Ratti Rs. 5175.00 INR<br>18.25 Ratti Rs. 5475.00 INR<br>19.25 Ratti Rs. 5775.00 INR<br>20.25 Ratti Rs. 6075.00 INR<br>21.25 Ratti Rs. 6375.00 INR<br><br>"]
    }

    @IBAction func buyNow(_ sender: Any) {
        ShowWebView(urll: "https://khannagems.com/")
    }
    
    @IBOutlet weak var menuBtn: UIBarButtonItem!
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func showDropDown(){
        dropDown.show()
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "semigem", for: indexPath) as! detailOfSemiGem
        cell._labelDetail.attributedText = semiGemsDetail[0].convertHtml()
        cell._labelDetail.sizeToFit()
        cell._labelDetail.font = UIFont.systemFont(ofSize: 18)
        let dummyView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        cell._textField.inputView = dummyView
        dropDown.anchorView = cell._textField
        cell._textField.addTarget(self, action: #selector(showDropDown), for: .allEditingEvents)
        cell._textField.layer.borderColor = UIColor.black.cgColor
        cell._textField.layer.borderWidth = 1.0
        cell.layer.cornerRadius = 5.0
        cell._textField.text = semiGemsNames[whichSemipreciousGem]
        return cell
    }
    

}
class detailOfSemiGem: UITableViewCell{
    @IBOutlet weak var _labelDetail: UILabel!
    @IBOutlet weak var _textField: UITextField!
    @IBOutlet weak var _webView: UIWebView!
    
}

