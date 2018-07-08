//
//  HoroscopeViewController.swift
//  GemSelection
//
//  Created by Lakshay Chhabra on 07/07/18.
//  Copyright © 2018 atlas. All rights reserved.
//

import UIKit

class HoroscopeViewController: UIViewController {

    @IBOutlet var city: UITextField!
    @IBOutlet var min: UITextField!
    @IBOutlet var hour: UITextField!
    @IBOutlet var year: UITextField!
    @IBOutlet var month: UITextField!
    @IBOutlet var day: UITextField!
    
    @IBOutlet var receivedData: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func submitButtonPressed(_ sender: Any) {
        
        
        let headers = [
            "Content-Type": "application/x-www-form-urlencoded",
            "Accept-Language": "en",
            "Authorization": "Basic NjAxNjk2Ojg1MTBlNTM3YmNjNDI0ZTE1NGEzODYwZTcwZTkyMjA5=="
        ]
        
        let postData = NSMutableData(data: "day=26".data(using: String.Encoding.utf8)!)
        postData.append("&month=3".data(using: String.Encoding.utf8)!)
        postData.append("&year=2018".data(using: String.Encoding.utf8)!)
        postData.append("&hour=23".data(using: String.Encoding.utf8)!)
        postData.append("&min=52".data(using: String.Encoding.utf8)!)
        postData.append("&lat=37.3382".data(using: String.Encoding.utf8)!)
        postData.append("&lon=-121.8863".data(using: String.Encoding.utf8)!)
        postData.append("&tzone=-7".data(using: String.Encoding.utf8)!)
        postData.append("&date=03-27-2018".data(using: String.Encoding.utf8)!)
        
        let request = NSMutableURLRequest(url: NSURL(string: "https://json.astrologyapi.com/v1/planets")! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "POST"
        request.allHTTPHeaderFields = headers
        request.httpBody = postData as Data
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error ?? "Error")
            } else {
                let httpResponse = response as? HTTPURLResponse
                print(httpResponse)
                print(response)
                
            }
        })
        
        dataTask.resume()
        
    }
    


}
