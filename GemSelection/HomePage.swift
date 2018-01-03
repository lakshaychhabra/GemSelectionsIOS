//
//  ViewController.swift
//  GemSelection
//
//  Created by Abhishek on 25/10/17.
//  Copyright © 2017 atlas. All rights reserved.
//

import UIKit
import DropDown
class HomePage: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    @IBAction func buyNowBtn(_ sender: Any) {
    ShowWebView(urll: "https://khannagems.com/")
    }
    @IBOutlet weak var moreBtn: UIBarButtonItem!
    @IBOutlet weak var menuBtn: UIBarButtonItem!
    @IBAction func menuBtnAction(_ sender: Any) {
        dropDownMain.show()
    }
    let _webView = UIWebView()
    let dropDownMain = DropDown() ; let dropDownSecondary = DropDown()
    var elementSelectedInMainDropDown:Int = 0
    override func viewWillAppear(_ animated: Bool) {
        let width = self.view.frame.width-20 ; let height = self.view.frame.height/3
         _webView.loadHTMLString("<iframe width=\"\(width)\" height=\"\(height)\" src=\"https://www.youtube.com/embed/exSOLLQKZEM\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil)
    }
override func viewDidLoad() {
        super.viewDidLoad()
        initialiazeDropDownMain()
        if self.revealViewController() != nil {
                        menuBtn.target = self.revealViewController()
                        menuBtn.target = self.revealViewController()
                        menuBtn.action = #selector
                            (SWRevealViewController.rightRevealToggle(_:))
                        menuBtn.action = #selector
                            (SWRevealViewController.revealToggle(_:))
                        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
                    }
        self.revealViewController().rearViewRevealWidth = 285.0
        _webView.scrollView.isScrollEnabled = false
        _webView.scrollView.showsVerticalScrollIndicator = false
        _webView.scrollView.bounces = false
        dropDownSecondary.anchorView = moreBtn
        dropDownMain.anchorView = moreBtn

    }
    
//DROP DOWN INITIALIZATION :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
func initialiazeDropDownMain(){
        dropDownMain.dataSource = ["Payment Methods", "Govt. Lab Certificates    ▶︎", "Testimonials","About Shipment","Membership                    ▶︎","Astrology","Puja","Frequently Asked Ques.","About                              ▶︎","Exit"]
        dropDownMain.selectionAction = { [unowned self] (index: Int, item: String) in
            self.elementSelectedInMainDropDown = index
            self.dropDownMain.hide()
            self.showDropDownSecondary()
        }
}
    func showDropDownSecondary(){
        switch elementSelectedInMainDropDown {
        case 1:
            dropDownSecondary.dataSource = ["Natural Saphire","Treated Sapphire","Heated Sapphire"]
            dropDownSecondary.show()
            dropDownSecondary.selectionAction = { [unowned self] (index: Int, item: String) in
                self.dropDownSecondary.hide()
            }
        case 4:
            dropDownSecondary.dataSource = ["ALL INDIA MANAGEMENT ASSOCIATIONS","INDIAN DIAMOND INSTITUTE","SURAT GEMOLOGY INSTITUTE"]
            dropDownSecondary.show()
            dropDownSecondary.selectionAction = { [unowned self] (index: Int, item: String) in
                self.dropDownSecondary.hide()
            }
        case 8:
            dropDownSecondary.dataSource = ["Anout Us","Management Team","Pankaj Khanna","Khanna Gems Pvt. Ltd.","Sonipat"]
            dropDownSecondary.show()
            dropDownSecondary.selectionAction = { [unowned self] (index: Int, item: String) in
                self.dropDownSecondary.hide()
            }
        default:
            break
        }
}
//::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 5
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)

            _webView.frame = CGRect(x: 0, y: 0, width: cell.frame.width, height: cell.frame.height)
            cell.addSubview(_webView)
            return cell
        }
        else {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeCell
            cell.layer.cornerRadius = 3.0
            cell.layer.shadowColor = UIColor.gray.cgColor
            cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
            cell.layer.shadowRadius = 3.0;
            cell.layer.shadowOpacity = 1.0;
            cell.layer.masksToBounds = false;
        return cell
        }
      
    }
    
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0{
            return CGSize(width: self.collectionView!.frame.width-20, height: self.view.frame.height/3)
        } else {
              return CGSize(width: 150, height: 200)
        }
    }

     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if section == 0 {
            return 0
        } else {
            return 20
        }
    }
    

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if section == 0 {
           return UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 10)
        } else {
            return UIEdgeInsets(top: 0, left: 5, bottom: 40, right: 5)
            
        }
    }
}





class HomeCell : UICollectionViewCell{
    @IBOutlet weak var _upperLabel: UILabel!
    @IBOutlet weak var _stoneImage: UIImageView!
    @IBOutlet weak var _lowerLabel: UILabel!
    
}

