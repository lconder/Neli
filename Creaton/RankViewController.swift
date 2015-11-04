//
//  RankViewController.swift
//  Horus
//
//  Created by MAC on 23/10/15.
//  Copyright © 2015 Luis Conde. All rights reserved.
//

import UIKit

class RankViewController: UIViewController {

    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var institucion: UILabel!
    @IBOutlet weak var imgInst: UIImageView!
    var titleString: String!
    var descripcionString: String!
    var  institucionString: String!
    var  ImgInstString: String!
    var  ImgUserString: String!
    
    @IBAction func valorar() {
        let alertController = UIAlertController(title: "Se ha enviado la valoración", message:
            "Se actualizaron los datos", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.Default,handler: nil))
        
        self.performSegueWithIdentifier("segueIdentifier", sender: self)
        
        self.presentViewController(alertController, animated: true, completion: nil);
        
        
    }

    
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColorFromHex(0x35454D)
        self.navigationController?.navigationBar.barTintColor = UIColorFromHex(0x35454D)
        
        self.titulo.text = self.titleString
        self.institucion.text = self.institucionString
        self.imgInst.image = UIImage(named: self.ImgInstString)
        
        

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
