//
//  HomeStonesDetailed.swift
//  GemSelection
//
//  Created by abhishek chaudhary on 17/01/18.
//  Copyright © 2018 atlas. All rights reserved.
//

import UIKit
import DropDown
var whichDetailedStone:Int = 1
class HomeStonesDetailed: UITableViewController {
    @IBOutlet var _priceView: UIView!
    @IBOutlet weak var _textViewDetail: UITextView!
    @IBAction func closeBtn(_ sender: Any) {
        aView.removeFromSuperview()
    }
    let dropDownType = DropDown() ; let dropDownQuantityPrice = DropDown() ; let dropDownSubQuantityPrice = DropDown() ; let aView = UIView()
      let homeData = HomeData() ; let pannaHomeData = HomePannaStoneData()
    var whichPannaStone:Int = 0 ; var whichPannQuality:Int = 0
   
    override func viewDidLoad() {
        super.viewDidLoad()
        aView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        aView.backgroundColor = UIColor.black.withAlphaComponent(0.4) ;  _priceView.center = self.view.center
        _priceView.layer.cornerRadius = 5.0
        aView.addSubview(_priceView)
        dropDownType.dataSource = pannaHomeData.pannaStones
        dropDownType.selectionAction = { [unowned self] (index: Int, item: String) in
            print("Selected item: \(item) at index: \(index)")
            self.whichPannaStone = index
            let indexxx = IndexPath(row: 1, section: 0)
            self.tableView.reloadData()
            self.tableView.scrollToRow(at: indexxx, at: .top, animated: true)
            }
        dropDownQuantityPrice.selectionAction = { [unowned self] (index: Int, item: String) in
            print("Selected item: \(item) at index: \(index)")
            self.whichPannQuality = index
            self.tableView.reloadData()
            self._textViewDetail.text = self.pannaHomeData.emerald_quantities[index]
            self.view.addSubview(self.aView)
        }
        
}
    
    override func viewWillAppear(_ animated: Bool) {
        switch whichDetailedStone {
        case 1:
            dropDownQuantityPrice.dataSource = pannaHomeData.pannaStonesQualities
        default:
            return
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func showDropDownType(){
        dropDownType.show()
    }
    func showDropDownQuantity(){
        dropDownQuantityPrice.show()
    }
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
             let cell = tableView.dequeueReusableCell(withIdentifier: "webcellsd", for: indexPath) as!webRowinStoneDetailed
            cell._textFieldtype.layer.borderWidth = 1.0 ; cell._textFieldtype.layer.borderColor = UIColor.red.cgColor
            cell._textFieldQuantity.layer.borderWidth = 1.0 ; cell._textFieldQuantity.layer.borderColor = UIColor.red.cgColor
            cell._textFieldQuantity.layer.cornerRadius = 5.0 ; cell._textFieldtype.layer.cornerRadius = 5.0
           
            let dummyView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
            cell._textFieldtype.inputView = dummyView ; cell._textFieldQuantity.inputView = dummyView
            dropDownType.anchorView = cell._textFieldtype
            dropDownQuantityPrice.anchorView = cell._textFieldQuantity
            cell._textFieldtype.addTarget(self, action: #selector(showDropDownType), for: .allEditingEvents)
            cell._textFieldQuantity.addTarget(self, action: #selector(showDropDownQuantity), for: .allEditingEvents)
if whichDetailedStone == 1{
            cell._imageView.image = homeData.stoneImages[whichDetailedStone]
            cell._labelTitle.text = homeData.stoneNamesUpper[whichDetailedStone]
            cell._textFieldtype.text = pannaHomeData.pannaStones[whichPannaStone]
            cell._textFieldQuantity.text = pannaHomeData.pannaStonesQualities[whichPannQuality]
            cell._labelTitle.textColor = UIColor.green
}
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "textcellsd", for: indexPath) as! detailTextrowinStoneDetailed
            if (whichPannaStone == 0){
            cell._labelDetailAbout.text = pannaHomeData.aboutPannaStone[0]
            cell._imageViewHeight.constant = 0
            cell._imageViewofselectedType.isHidden = true
            }
            if (whichPannaStone == 1){
                cell._labelDetailAbout.text = pannaHomeData.emeraldCabochon[0]
                cell._imageViewHeight.constant = 0
                cell._imageViewofselectedType.isHidden = true
            }
            if (whichPannaStone == 2){
                cell._labelDetailAbout.text = pannaHomeData.zambianEmerald[0]
                cell._imageViewofselectedType.image = pannaHomeData.pannaSubStones[whichPannaStone]
                cell._imageViewHeight.constant = 128
                cell._imageViewofselectedType.isHidden = false

            }
            if (whichPannaStone == 3){
                cell._labelDetailAbout.text = pannaHomeData.columbianEmerald[0]
                cell._imageViewofselectedType.image = pannaHomeData.pannaSubStones[whichPannaStone]
                cell._imageViewHeight.constant = 128
             cell._imageViewofselectedType.isHidden = false
                
            }
            if (whichPannaStone == 4){
                cell._labelDetailAbout.text = pannaHomeData.brazilianEmerald[0]
                cell._imageViewofselectedType.image = pannaHomeData.pannaSubStones[whichPannaStone]
                cell._imageViewHeight.constant = 128
                 cell._imageViewofselectedType.isHidden = false
            }
            if (whichPannaStone == 5){
                cell._labelDetailAbout.text = pannaHomeData.swatEmerald[0]
                cell._imageViewofselectedType.image = pannaHomeData.pannaSubStones[whichPannaStone]
                cell._imageViewHeight.constant = 128
                 cell._imageViewofselectedType.isHidden = false
            }
            
            return cell
        }
   
    }
    

 
}

class webRowinStoneDetailed: UITableViewCell {
    @IBOutlet weak var _imageView: UIImageView!
    @IBOutlet weak var _labelTitle: UILabel!
    @IBOutlet weak var _webView: UIWebView!
    @IBOutlet weak var _labelType: UILabel!
    @IBOutlet weak var _textFieldtype: UITextField!
    @IBOutlet weak var _labelQuantity: UILabel!
    @IBOutlet weak var _textFieldQuantity: UITextField!
    
}
class detailTextrowinStoneDetailed: UITableViewCell{
    @IBOutlet weak var _imageViewHeight: NSLayoutConstraint!
    @IBOutlet weak var _imageViewofselectedType: UIImageView!
    @IBOutlet weak var _labelDetailAbout: UILabel!
    @IBOutlet weak var _textFieldSelectedQuantity: UITextField!
    
}
