//
//  TableViewCellD.swift
//  Horus
//
//  Created by MAC on 23/10/15.
//  Copyright © 2015 Luis Conde. All rights reserved.
//

import UIKit

class TableViewCellD: UITableViewCell
{
    
    
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var rank: UILabel!
    @IBOutlet weak var ImgInst: UIImageView!
    @IBOutlet weak var imgUser: UIImageView!
    @IBOutlet weak var usuario: UILabel!
    @IBOutlet weak var descripcion: UILabel!
    @IBOutlet weak var instituto: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
