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
        semiGemsDetail = ["<b><u>Panna Stone :</u></b><br>\tAt Gem Selections we have a range of Panna i.e., Panna from Rs. 450/ Rt to Rs. 51000/ Rt.<br><br>The market is full of Fake, Dyed and Counterfeit Panna Stone. These are being sold as Zambian Panna and other names but in realty they are dyed stones.<br>If some one tries to sell a transparent Panna Stone, you should be doubly cautious, because Panna Stone is rarely transparent.<br>To be sure that you get a Natural Panna Stone without any Dye or Treatment you must visit<br><b>Gem Selections, Shop No. 8, A-3 DDA Market, Janakpuri, New Delhi -110058 </b>see the inventory understand a Panna Stone then decide from where you want to buy the Panna Stone that will change your destiny.<br>In your own interest, never buy a Panna Stone until you have visited Gem Selections and understood what a Natural Panna Stone looks like.<br>Panna stone is a gemstone and a variety of the mineral beryl (Be3Al2(SiO3)6) colored green by trace amounts of chromium and sometimes vanadium. Beryl has a hardness of 7.5–8 on the Mohs scale. Most Panna Stone are highly included, so their toughness (resistance to breakage) is classified as generally poor.<br><br>Panna Stone is the gemstone for planet mercury. Wearer gets intelligence, name and fame when wears Panna Stone as gemstone.<br><br>Precious gems including Panna stone are being illegally mined by locals in Gudabandha in Purbi Singhbhum district of Jharkhand<br><br>What ever you buy comes with a Govt. Lab Certificate,, bill and Guarantee of purity and originality from our company and its promoter Mr. Pankaj KhannaThere are many varieties of colored gemstones. One of the most popular is the Panna Stone.Panna Stone are fascinating gemstones. They have the most beautiful, most intense and most radiant green that can possibly be imagined: Panna Stone green. Inclusions are tolerated.<br><br>Panna Stone is the most precious stone in the beryl group. The wonderful green color of Panna Stone is unparalleled in the gem world.<br><br>Panna Stone has priority over beryl as a mineral name. Panna Stone was known in antiquity and was prized as a gem.<br><br>Panna Stone has many special qualities, but colored stone professionals generally agree that emeralds are, most of all, about color.<br><br>A good Panna Stone is smooth and transparent and emits bright rays, and is without any dots or spots, this type of stone is considered most auspicious gemstone.<br><br>It is believed that the region has huge stock of the most precious and highest quality emerald in the country which cost Rs. 50,000 per ten grams. In markets, 5-7.5 gravity emerald is said to the purest, and that is what lies in huge quantities beneath the earth here.<br><br>Illegal mining of Panna Stone a multi-crore industry in Jharkhand village<br><br>It is believed that the region has huge stock of the most precious and highest quality Panna Stone in the country which cost Rs. 50,000 per ten grams. In markets, 5-7.5 gravity Panna Stone is said to the purest, and that is what lies in huge quantities beneath the earth here.<br><br><b><u>Panna stone Shape and Cut</u></b>Panna Stone Oval<br>\tPanna Stone Rectangular Octagonal<br>\tPanna Stone Rectangular Cushion<br>\tPanna Stone Square Octagonal<br><br><b><u>Origin</u></b><br>\tBrazil : Brazilian Panna Stone<br>\tZambia : Zambian Panna Stone<br>\tColombia : Colombian Panna Stone<br>\tSwat : Swat Panna Stone<br><br><b><u>Color</u></b>Green<br><br><b><u>Govt Lab Certified Panna Stone</u></b>The IGI Colored Stone Report clearly states whether the stone is natural or synthetic, provides other data describing its shape, cut, weight, measurements, color, transparency and major optical characteristics, and also includes a detailed photograph of the stone. The country of origin is stated on the report if the gemological analysis conclusively reveals it.<br><br>Gemstones should only change hands when accompanied by a certificate attesting to quality. Regardless of location or marketplace, an authentic IGI Laboratory Report is the common language of trust and confidence in the gemological world.<br><br>The Gem and Jewellery Export Promotion Council (GJEPC) was set up by the Ministry of Commerce, Government of India (GoI) in 1966. It was one of several Export Promotion Councils (EPCs) launched by the Indian Government, to boost the country’s export thrust, when India’s post-Independence economy began making forays in the international markets. Since 1998, the GJEPC has been granted autonomous status.<br><br> <b><u>Identification of Panna Stone</u></b><br><br>\tCategory :: Beryl variety<br>\tMolar mass :: 537.50<br>\tColor :: Green shades<br>\tMohs scale hardness :: 7.5-8<br>\tLuster :: Vitreous<br>\tStreak :: White<br>\tspecific gravity :: Average 2.76<br>\tRefractive index :: 1.564– 1.595,1.568–1.602<br>\tBirefringence :: 0.0040–0.0070<br>\tChemical formula :: Be3Al2(SiO3)6<br><br><b><u>History of Panna Stone</u></b><br><br>\tHistory of Panna Stone Panna Stone\'s are ancient gemstones. According to the oldest book in the world, the Papyrus Prisse,<br><br>The Panna Stone has been a gem of fascination in many cultures for over six thousand years.<br><br>Since the time of ancient legends, the more recent history begins in South America in 1568 when the Spanish Conquistadors formally began mining Panna Stone\'s<br><br>Panna Stone crystal from Muzo, Colombia<br><br>Brazilian Panna Stone (grass-green variety of the mineral beryl) in a quartz-pegmatite matrix with typical hexagonal, prismatic crystals.<br><br>Spanish-made Panna Stone and gold pendant exhibited at Victoria and Albert Museum.<br><br>The Gachala Panna Stone is one of the largest gem Panna Stone\'s in the world, at 858 carats (171.6 grams). This stone was found in 1967 at La Vega de San Juan mine in Gachalá, Colombia. It is housed at the National Museum of Natural History of the Smithsonian Institution in Washington,<br><br>The Chalk Panna Stone ring, containing a top-quality 37-carat Panna Stone, in the U.S. National Museum of Natural History<br><br>Panna Stone crystal (about 1 cm) in calcite matrix, Muzo, Colombia<br><br><b><u>Panna Stone Origin</u></b><br><br>\tChalk Emerald : Colombia<br>\tDuke of Devonshire Panna Stone<br>\tGachala Panna Stone<br>\tMogul Mughal Panna Stone<br>\tBahia Panna Stone Brazil<br><br><b><u>Synthetic Panna Stone</u></b><br><br>The Linde Division of Union Carbide produced completely synthetic emeralds by hydrothermal synthesis.<br>Hydrothermal synthetic emeralds have been attributed to IG Farben, Nacken<br>Synthetic emeralds are often referred to as \"created\", as their chemical and gemological composition is the same as their natural counterparts.<br>The first commercially successful emerald synthesis process was that of Carroll Chatham, likely involving a lithium vanadate flux process<br><br><b><u>Panna Stone localities</u></b><br><br>Panna stone\'s are found all over the world in countries such as Afghanistan, Australia, Austria, Brazil, Bulgaria, Cambodia, Canada, China, Egypt, Ethiopia, France, Germany, India, Italy, Kazakhstan, Madagascar, Mozambique, Namibia, Nigeria, Norway, Pakistan, Russia, Somalia, South Africa, Spain, Switzerland, Tanzania, United States, Zambia, and Zimbabwe. In the US, emeralds have been found in Connecticut, Montana, Nevada, North Carolina, and South Carolina. In 1997 emeralds were discovered in the Yukon."]
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

