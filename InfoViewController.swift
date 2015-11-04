//
//  InfoViewController.swift
//  Horus
//
//  Created by MAC on 23/10/15.
//  Copyright © 2015 Luis Conde. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    
    var URLPath = "http://www.auditoriapuebla.gob.mx/"
    override func viewDidLoad() {
        super.viewDidLoad()
        loadAddress()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func loadAddress()
    {
        let requestURL = NSURL(string: URLPath)
        let request = NSURLRequest(URL: requestURL!)
        myWebView.loadRequest(request)
        
    }

}
