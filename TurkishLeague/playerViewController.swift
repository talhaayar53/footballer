//
//  playerViewController.swift
//  TurkishLeague
//
//  Created by TALHA AYAR on 15.09.2018.
//  Copyright © 2018 TALHA AYAR. All rights reserved.
//

import UIKit

class playerViewController: UIViewController {
    @IBOutlet weak var oyunculogoimage: UIImageView!
    @IBOutlet weak var oyuncuadlabel: UILabel!
    @IBOutlet weak var oyuncuyaslabel: UILabel!
    @IBOutlet weak var oyuncubiotextview: UITextView!
    var oyuncular = player()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
oyuncuadlabel.text = self.oyuncular.name
        oyuncuyaslabel.text = self.oyuncular.age
        oyunculogoimage.image = self.oyuncular.photo
        
    }

}
