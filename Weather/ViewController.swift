//
//  ViewController.swift
//  Weather
//
//  Created by Mukul Keshar on 8/1/17.
//  Copyright © 2017 Mukul Keshar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        var names = [String]()
        
        do {
            if let data = data,
                let json = try JSONSerialization.jsonObject(with: data) as? [String: Any],
                let blogs = json["blogs"] as? [[String: Any]] {
                for blog in blogs {
                    if let name = blog["name"] as? String {
                        names.append(name)
                    }
                }
            }
        } catch {
            print("Error deserializing JSON: \(error)")
        }
        
        print(names)
        
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

