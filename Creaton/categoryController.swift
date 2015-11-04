//
//  categoryController.swift
//  Horus
//
//  Created by MAC on 23/10/15.
//  Copyright © 2015 Luis Conde. All rights reserved.
//

import UIKit

class categoryController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var tableView: UITableView!
    
    var objects: NSMutableArray! = NSMutableArray()
    
    override func viewDidLoad()
    {

        
        super.viewDidLoad()
        self.objects.addObject("Gobierno")
        self.objects.addObject("Seguridad")
        self.objects.addObject("Desarrollo Social")
        self.objects.addObject("Agricultura Ganadería y Pesca")
        self.objects.addObject("Comunicaciones y Transportes")
        self.objects.addObject("Desarrollo Económico")
        self.objects.addObject("Educación")
        self.objects.addObject("Salud")
        self.objects.addObject("Medio Ambiente")
        self.objects.addObject("Energía")
        self.objects.addObject("Turismo")
        self.view.backgroundColor = UIColorFromHex(0x35454D)
        self.navigationController?.navigationBar.barTintColor = UIColorFromHex(0x35454D)
        
        self.tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK - Table View
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.objects.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        print("tableView")
            let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        
            cell.titleLabel.text = self.objects.objectAtIndex(indexPath.row) as? String
        
            return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("showView", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        
        if(segue.identifier == "showView")
        {
            var upcoming : NewViewController = segue.destinationViewController as! NewViewController
            
            let indexPath = self.tableView.indexPathForSelectedRow!
            
            let titleString = self.objects.objectAtIndex(indexPath.row) as? String
            
            upcoming.titleString = titleString
            
            self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
    }
    
    func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0
        
        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }

    
}
