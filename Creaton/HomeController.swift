//
//  HomeController.swift
//  Horus
//
//  Created by MAC on 23/10/15.
//  Copyright © 2015 Luis Conde. All rights reserved.
//
import UIKit

class HomeController: UIViewController, UITableViewDelegate,UITableViewDataSource
{
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var titulos = [String]()
    var descripciones = [String]()
    var instituciones = [String]()
    var nombres = [String]()
    var rank = [String]()
    var imgUser = [String]()
    var imgInst = [String]()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColorFromHex(0x35454D)
        self.navigationController?.navigationBar.barTintColor = UIColorFromHex(0x35454D)
        
        
        print("HomeController")
        
        titulos = ["Const. Arco Ote Cd Puebla","Construcción Del Tramo B Del Arco Oriente ","Gastos De Supervisión Externa Por Contrato","Mantenimiento De La Carretera Federal","Reparaciones Generales","Construcción De Un Laboratorio De Idiomas","Construcción De Sanitarios En Estructura","Equipamiento Para El Centro De Estudios"]
        descripciones = ["","","","","","","",""]
        instituciones = ["SECRETARIA DE INFRAESTRUCTURA","COMISION ESTATAL DE AGUA Y SANEAMIENTO DE PUEBLA","SECRETARIA DE INFRAESTRUCTURA","COMITÉ ADMINISTRADOR POBLANO","COMITÉ ADMINISTRADOR POBLANO","COMITÉ ADMINISTRADOR POBLANO","COMITÉ ADMINISTRADOR POBLANO","COMITÉ ADMINISTRADOR POBLANO"]
        nombres = ["Javier Poblano Romero","Francisco Zambrano Gutierrez","Javier Poblano Romero","","","","",""]
        rank = ["1","2","3","4","5","6","7","8"]
        imgUser = ["profile.jpg","profile.jpg","profile.jpg","","","","",""]
        imgInst = ["logopuebla.jpg","logopuebla.jpg","logopuebla.jpg","logopuebla.jpg","logopuebla.jpg","logopuebla.jpg","logopuebla.jpg","logopuebla.jpg"]
        
        self.tableView.rowHeight = UITableViewAutomaticDimension
  //      self.tableView.estimatedRowHeight = 50
        

//        self.tableView.reloadData()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        print("return int")
        return titulos.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        print("tableView")
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell2", forIndexPath: indexPath) as! TableViewCellD
        
        let row = indexPath.row
        
        cell.titulo.text = titulos[row]//self.objects.objectAtIndex(indexPath.row) as? String
        
        cell.rank.text = rank[row]
        
        cell.usuario.text = nombres[row]
        
        cell.descripcion.text = descripciones[row]
        
        cell.instituto.text = instituciones[row]
        
        cell.ImgInst.image = UIImage(named: imgInst[row])
        
        cell.imgUser.image = UIImage(named:imgUser[row])
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        self.performSegueWithIdentifier("showView2", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "showView2")
        {
            let upcoming : RankViewController = segue.destinationViewController as! RankViewController
            
            let indexPath = self.tableView.indexPathForSelectedRow!
            
            let row = indexPath.row
            
            let titleString = titulos[row]//self.objects.objectAtIndex(indexPath.row) as? String
            
            let descripcionString = descripciones[row]
            
            let institucionString = instituciones[row]
            
            let ImgInstString = imgInst[row]
            
            let ImgUserString = imgUser[row]
            
            upcoming.titleString = titleString
            
            upcoming.institucionString = institucionString
            
            upcoming.ImgInstString = ImgInstString
            
            upcoming.ImgUserString = ImgUserString
            
            upcoming.descripcionString = descripcionString
            
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