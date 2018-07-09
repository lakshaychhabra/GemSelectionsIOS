//
//  IndianAstrologyOutput.swift
//  GemSelection
//
//  Created by Lakshay Chhabra on 09/07/18.
//  Copyright © 2018 atlas. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class IndianAstrologyOutput: UIViewController {

//    var selectedIndex : Int = 0
    @IBOutlet var textView: UITextView!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var goButtojn: UIButton!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var setTimeButton: UIButton!
    @IBOutlet var setDatebutton: UIButton!
    
    var selectedIndex : Int = 0
    var url : String = " "
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.isHidden = true
        timeLabel.isHidden = false
        goButtojn.isHidden = false
        dateLabel.isHidden = false
        nameTextField.isHidden = false
        setDatebutton.isHidden = false
        setTimeButton.isHidden = false
        
        print(selectedIndex)
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(handlePopUpDate), name: NSNotification.Name(rawValue: "saveDate"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(handlePopUpTime), name: NSNotification.Name(rawValue: "saveTime"), object: nil)
        
    }

    @objc func handlePopUpDate(notification : Notification){
        let dateVC = notification.object as! DatePopUpViewController
        dateLabel.text = dateVC.date
    }
  
    @objc func handlePopUpTime(notification : Notification){
        let timeVC = notification.object as! DatePopUpViewController
        timeLabel.text = timeVC.formattedTime
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDate" {
            let popup = segue.destination as! DatePopUpViewController
            popup.showTimePicker = false
        }
        if segue.identifier == "toTime" {
            let popup = segue.destination as! DatePopUpViewController
            popup.showTimePicker = true
        }
    }
    
    func gettingUrl(){
        
        switch selectedIndex {
        case 0:  url = " "
                break
        case 1:  url = " "
            break
        case 2:  url = " "
            break
        case 3:  url = " "
            break
        case 4:  url = " "
            break
        case 5:  url = " "
            break
        case 6:  url = " "
            break
        case 7:  url = " "
            break
        case 8:  url = " "
            break
        case 9:  url = " "
            break
        case 10:  url = " "
            break
        case 11:  url = " "
            break
        case 12:  url = " "
            break
        case 13:  url = " "
            break
            
        default:
            url = " "
        }
        
    }


    @IBAction func goButtonPressed(_ sender: UIButton) {
        
        
        gettingUrl()
        
        textView.isHidden = false
        timeLabel.isHidden = true
        goButtojn.isHidden = true
        dateLabel.isHidden = true
        nameTextField.isHidden = true
        setDatebutton.isHidden = true
        setTimeButton.isHidden = true
        
        
    }
    
    
}
