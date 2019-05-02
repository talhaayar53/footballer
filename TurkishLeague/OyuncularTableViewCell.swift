//
//  OyuncularTableViewCell.swift
//  TurkishLeague
//
//  Created by TALHA AYAR on 15.09.2018.
//  Copyright © 2018 TALHA AYAR. All rights reserved.
//

import UIKit

class OyuncularTableViewCell: UITableViewCell {
    @IBOutlet weak var playerlogo: UIImageView!
    @IBOutlet weak var playernamelabel: UILabel!
    @IBOutlet weak var playerpositionlabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
