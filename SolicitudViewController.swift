//
//  SolicitudViewController.swift
//  Horus
//
//  Created by MAC on 23/10/15.
//  Copyright © 2015 Luis Conde. All rights reserved.
//

import UIKit

class SolicitudViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColorFromHex(0x35454D)
        self.navigationController?.navigationBar.barTintColor = UIColorFromHex(0x35454D)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0
        
        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }

}
