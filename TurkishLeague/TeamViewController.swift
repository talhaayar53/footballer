//
//  TeamViewController.swift
//  TurkishLeague
//
//  Created by TALHA AYAR on 13.09.2018.
//  Copyright © 2018 TALHA AYAR. All rights reserved.
//

import UIKit

class TeamViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var teamlogoimage: UIImageView!
    @IBOutlet weak var kuruluslabel: UILabel!
    @IBOutlet weak var siralabel: UILabel!
    @IBOutlet weak var puanlabel: UILabel!
    @IBOutlet weak var oyuncularlabel: UILabel!
    @IBOutlet weak var oyunculartable: UITableView!
    
    
    
    var t = team()
    var p = player()
    var chosenplayer = player()
    
    
    override func viewDidLoad() {
        self.oyunculartable.dataSource = self
        self.oyunculartable.delegate = self
        
        super.viewDidLoad()
        
        let url = URL(string: self.t.logo)
        //teamlogoimage.kf.setImage(with: url)
        
        kuruluslabel.text = "\(self.t.year) yılında kuruldu."
        puanlabel.text = "Ligi \(self.t.lastyearpoint) puanda bitirdi."
        siralabel.text = "Ligi \(self.t.lastyearposition) sırada bitirdi."
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let playercell = oyunculartable.dequeueReusableCell(withIdentifier: "playerstable", for: indexPath) as! OyuncularTableViewCell
        
        playercell.playernamelabel.text = self.t.players[indexPath.row].name
        playercell.playerlogo.image = self.t.players[indexPath.row].photo
        playercell.playerpositionlabel.text = self.t.players[indexPath.row].position
        return playercell
}
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.t.players.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenplayer = t.players[indexPath.row]
       self.performSegue(withIdentifier: "toplayerscreen", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toplayerscreen" {
            let destinationVC = segue.destination as? playerViewController
            destinationVC?.oyuncular = self.chosenplayer
}
}
}
