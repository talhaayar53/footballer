//
//  puanlarTableViewCell.swift
//  TurkishLeague
//
//  Created by TALHA AYAR on 15.09.2018.
//  Copyright © 2018 TALHA AYAR. All rights reserved.
//

import UIKit

class puanlarTableViewCell: UITableViewCell {
    @IBOutlet weak var takimadilabel: UILabel!
    @IBOutlet weak var avarajlabel: UILabel!
    @IBOutlet weak var puanlabel: UILabel!
    @IBOutlet weak var siralamalabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }

}
