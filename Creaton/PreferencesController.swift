//
//  PreferencesController.swift
//  Creaton
//
//  Created by MAC on 22/10/15.
//  Copyright © 2015 Luis Conde. All rights reserved.
//

import UIKit

class PreferencesController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var myPicker: UIPickerView!
    
    @IBOutlet weak var button1: UIButton!
    
    var Array = ["Estudiante", "Desempleado", "Independiente","Profesionista sector privado","Profesionista sector público","Jubilado", "Empresario", "Profesor","Comerciante"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        print("First Controller")
        imgProfile.layer.cornerRadius = imgProfile.frame.size.width/2
        imgProfile.clipsToBounds = true
        //imgProfile.layer.masksToBounds = true
        imgProfile.layer.borderWidth = 3.0
        imgProfile.layer.borderColor = UIColorFromHex(0xCC6732).CGColor
        self.view.backgroundColor = UIColorFromHex(0x35454D)
        
        myPicker.delegate = self
        myPicker.dataSource = self
        
        self.navigationController?.navigationBar.barTintColor = UIColorFromHex(0x35454D)
        //self.navigationController?.navigationBar.titleTextAttributes = (NSForegroundColorAttributeName: UIColor.whiteColor())
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
         return Array[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Array.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = Array[row]
        let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "Georgia", size: 15.0)!,NSForegroundColorAttributeName:UIColor.whiteColor()])
        return myTitle
    }
    
    func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0
        
        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }

    @IBAction func pressButton() {
        self.performSegueWithIdentifier("segueIdentifier", sender: self)
    }

}