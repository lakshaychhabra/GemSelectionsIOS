//
//  AstrolgyMainViewController.swift
//  GemSelection
//
//  Created by Lakshay Chhabra on 09/07/18.
//  Copyright © 2018 atlas. All rights reserved.
//

import UIKit

class AstrolgyMainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func matchMakin(_ sender: Any) {
        let storyboard = UIStoryboard(name: "MatchMaking", bundle: nil)
        let output = storyboard.instantiateViewController(withIdentifier: "matchMaking") as! MatchMaking
        
        self.navigationController?.pushViewController(output, animated: true)
    }
    @IBAction func westernAstrology(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "WesternAstrology", bundle: nil)
        let output = storyboard.instantiateViewController(withIdentifier: "westernAstrology") as! WesternAstrology
        
        
        self.navigationController?.pushViewController(output, animated: true)
    }
    @IBAction func dailyHoroscope(_ sender: Any) {
   
    }
    
    @IBAction func indianAstrology(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "IndianAstrology", bundle: nil)
        let output = storyboard.instantiateViewController(withIdentifier: "indianAstrology") as! IndianAstrology
        
       
        self.navigationController?.pushViewController(output, animated: true)
    }
    
    
}
