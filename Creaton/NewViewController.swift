//
//  NewViewController.swift
//  Horus
//
//  Created by MAC on 23/10/15.
//  Copyright © 2015 Luis Conde. All rights reserved.
//

import UIKit


class NewViewController: UIViewController
{

    @IBOutlet weak var titleLabel: UILabel!
    
    var titleString : String!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.titleLabel.text = self.titleString
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

}
