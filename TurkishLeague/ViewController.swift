//
//  ViewController.swift
//  TurkishLeague
//
//  Created by TALHA AYAR on 15.09.2018.
//  Copyright © 2018 TALHA AYAR. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, SampleProtocol {
    
    
    @IBOutlet weak var superliglogoimage: UIImageView!
    @IBOutlet weak var puanlartable: UITableView!
    var teams = [team]()
    var chosenteam = team()
    var gsplayers = [player]()
    var chosenplayer = player()
    
    

    override func viewDidLoad() {
        puanlartable.delegate = self
        puanlartable.dataSource = self
        
        super.viewDidLoad()
        let gsoyuncu1 = player()
        gsoyuncu1.name = "Muslera"
        gsoyuncu1.age = "31"
        gsoyuncu1.photo = UIImage(named: "muslera.jpeg")!
        gsoyuncu1.position = "GK"
        
        let gsoyuncu2 = player()
        gsoyuncu2.name = "Mariano"
        gsoyuncu2.age = "32"
        gsoyuncu2.photo = UIImage(named: "mariano.jpeg")!
        gsoyuncu2.position = "RB"
        
        let gsoyuncu3 = player()
        gsoyuncu3.name = "Nagatomo"
        gsoyuncu3.age = "33"
        gsoyuncu3.photo = UIImage(named: "nagatomo.jpeg")!
        gsoyuncu3.position = "LB"
        
        let gsoyuncu4 = player()
        gsoyuncu4.name = "Fernando"
        gsoyuncu4.age = "31"
        gsoyuncu4.photo = UIImage(named: "fernando.jpeg")!
        gsoyuncu4.position = "DM"
        
        let gsoyuncu5 = player()
        gsoyuncu5.name = "Emre"
        gsoyuncu5.age = "25"
        gsoyuncu5.photo = UIImage(named: "emre.jpeg")!
        gsoyuncu5.position = "AMC"
        
        gsplayers.append(gsoyuncu1)
        gsplayers.append(gsoyuncu2)
        gsplayers.append(gsoyuncu3)
        gsplayers.append(gsoyuncu4)
        gsplayers.append(gsoyuncu5)
        
        
let Galatasaray = team()
        Galatasaray.name = "Galatasaray"
        Galatasaray.year = "1905"
        Galatasaray.lastyearpoint = "73"
        Galatasaray.lastyearaverage = "+40"
        Galatasaray.lastyearposition = "1."
        Galatasaray.logo = "https://i.pinimg.com/originals/fe/2a/ca/fe2aca0de99af8500be8c500811400e4.jpg"
        Galatasaray.players = gsplayers
        
        let Fenerbahçe = team()
        Fenerbahçe.name = "Fenerbahçe"
        Fenerbahçe.year = "1905"
        Fenerbahçe.lastyearpoint = "70"
        Fenerbahçe.lastyearaverage = "+40"
        Fenerbahçe.lastyearposition = "2."
        Fenerbahçe.logo = "https://3.bp.blogspot.com/-4SGshlI9KDM/WxraLiX1i0I/AAAAAAAAGkI/NOye-8mqXOkq34ob4qdq5wBG_NdYzfizQCLcBGAs/s320/fener%2Bhd%2Blogo.png"
        Fenerbahçe.players = gsplayers
        
        let Beşiktaş = team()
        Beşiktaş.name = "Beşiktaş"
        Beşiktaş.year = "1905"
        Beşiktaş.lastyearpoint = "65"
        Beşiktaş.lastyearaverage = "+40"
        Beşiktaş.lastyearposition = "3."
        Beşiktaş.logo = "https://3.bp.blogspot.com/-4SGshlI9KDM/WxraLiX1i0I/AAAAAAAAGkI/NOye-8mqXOkq34ob4qdq5wBG_NdYzfizQCLcBGAs/s320/fener%2Bhd%2Blogo.png"
        Beşiktaş.players = gsplayers
        
        let Osmanlıspor = team()
        Osmanlıspor.name = "Osmanlıspor"
        Osmanlıspor.year = "1905"
        Osmanlıspor.lastyearpoint = "61"
        Osmanlıspor.lastyearaverage = "+40"
        Osmanlıspor.lastyearposition = "4."
        Osmanlıspor.logo = "https://3.bp.blogspot.com/-4SGshlI9KDM/WxraLiX1i0I/AAAAAAAAGkI/NOye-8mqXOkq34ob4qdq5wBG_NdYzfizQCLcBGAs/s320/fener%2Bhd%2Blogo.png"
        Osmanlıspor.players = gsplayers
        
        let Erzurumspor = team()
        Erzurumspor.name = "Erzurumspor"
        Erzurumspor.year = "1905"
        Erzurumspor.lastyearpoint = "58"
        Erzurumspor.lastyearaverage = "+40"
        Erzurumspor.lastyearposition = "5."
        Erzurumspor.logo = "https://3.bp.blogspot.com/-4SGshlI9KDM/WxraLiX1i0I/AAAAAAAAGkI/NOye-8mqXOkq34ob4qdq5wBG_NdYzfizQCLcBGAs/s320/fener%2Bhd%2Blogo.png"
        Erzurumspor.players = gsplayers
        
        let Göztepe = team()
        Göztepe.name = "Göztepe"
        Göztepe.year = "1905"
        Göztepe.lastyearpoint = "53"
        Göztepe.lastyearaverage = "+40"
        Göztepe.lastyearposition = "6."
        Göztepe.logo = "https://3.bp.blogspot.com/-4SGshlI9KDM/WxraLiX1i0I/AAAAAAAAGkI/NOye-8mqXOkq34ob4qdq5wBG_NdYzfizQCLcBGAs/s320/fener%2Bhd%2Blogo.png"
        Göztepe.players = gsplayers
        
        let Bursaspor = team()
        Bursaspor.name = "Bursaspor"
        Bursaspor.year = "1905"
        Bursaspor.lastyearpoint = "50"
        Bursaspor.lastyearaverage = "+40"
        Bursaspor.lastyearposition = "7."
        Bursaspor.logo = "https://3.bp.blogspot.com/-4SGshlI9KDM/WxraLiX1i0I/AAAAAAAAGkI/NOye-8mqXOkq34ob4qdq5wBG_NdYzfizQCLcBGAs/s320/fener%2Bhd%2Blogo.png"
        Bursaspor.players = gsplayers
        
        let Konyaspor = team()
        Konyaspor.name = "Konyaspor"
        Konyaspor.year = "1905"
        Konyaspor.lastyearpoint = "45"
        Konyaspor.lastyearaverage = "+40"
        Konyaspor.lastyearposition = "8."
        Konyaspor.logo = "https://3.bp.blogspot.com/-4SGshlI9KDM/WxraLiX1i0I/AAAAAAAAGkI/NOye-8mqXOkq34ob4qdq5wBG_NdYzfizQCLcBGAs/s320/fener%2Bhd%2Blogo.png"
        Konyaspor.players = gsplayers
        
        let Akhisarspor = team()
        Akhisarspor.name = "Akhisarspor"
        Akhisarspor.year = "1905"
        Akhisarspor.lastyearpoint = "41"
        Akhisarspor.lastyearaverage = "+40"
        Akhisarspor.lastyearposition = "9."
        Akhisarspor.logo = "https://3.bp.blogspot.com/-4SGshlI9KDM/WxraLiX1i0I/AAAAAAAAGkI/NOye-8mqXOkq34ob4qdq5wBG_NdYzfizQCLcBGAs/s320/fener%2Bhd%2Blogo.png"
        Akhisarspor.players = gsplayers
        
        let Kayserispor = team()
        Kayserispor.name = "Kayserispor"
        Kayserispor.year = "1905"
        Kayserispor.lastyearpoint = "40"
        Kayserispor.lastyearaverage = "+40"
        Kayserispor.lastyearposition = "10."
        Kayserispor.logo = "https://3.bp.blogspot.com/-4SGshlI9KDM/WxraLiX1i0I/AAAAAAAAGkI/NOye-8mqXOkq34ob4qdq5wBG_NdYzfizQCLcBGAs/s320/fener%2Bhd%2Blogo.png"
        Kayserispor.players = gsplayers
        
        let Kasımpaşa = team()
        Kasımpaşa.name = "Kasımpaşa"
        Kasımpaşa.year = "1905"
        Kasımpaşa.lastyearpoint = "39"
        Kasımpaşa.lastyearaverage = "+40"
        Kasımpaşa.lastyearposition = "11."
        Kasımpaşa.logo = "https://3.bp.blogspot.com/-4SGshlI9KDM/WxraLiX1i0I/AAAAAAAAGkI/NOye-8mqXOkq34ob4qdq5wBG_NdYzfizQCLcBGAs/s320/fener%2Bhd%2Blogo.png"
        Kasımpaşa.players = gsplayers
        
        let Trabzonspor = team()
        Trabzonspor.name = "Trabzonspor"
        Trabzonspor.year = "1905"
        Trabzonspor.lastyearpoint = "38"
        Trabzonspor.lastyearaverage = "+40"
        Trabzonspor.lastyearposition = "12."
        Trabzonspor.logo = "https://3.bp.blogspot.com/-4SGshlI9KDM/WxraLiX1i0I/AAAAAAAAGkI/NOye-8mqXOkq34ob4qdq5wBG_NdYzfizQCLcBGAs/s320/fener%2Bhd%2Blogo.png"
        Trabzonspor.players = gsplayers
        
        let Başakşehir = team()
        Başakşehir.name = "Başakşehir"
        Başakşehir.year = "1905"
        Başakşehir.lastyearpoint = "37"
        Başakşehir.lastyearaverage = "+40"
        Başakşehir.lastyearposition = "13."
        Başakşehir.logo = "https://3.bp.blogspot.com/-4SGshlI9KDM/WxraLiX1i0I/AAAAAAAAGkI/NOye-8mqXOkq34ob4qdq5wBG_NdYzfizQCLcBGAs/s320/fener%2Bhd%2Blogo.png"
        Başakşehir.players = gsplayers
        
        let Antalyaspor = team()
        Antalyaspor.name = "Antalyaspor"
        Antalyaspor.year = "1905"
        Antalyaspor.lastyearpoint = "36"
        Antalyaspor.lastyearaverage = "+40"
        Antalyaspor.lastyearposition = "14."
        Antalyaspor.logo = "https://3.bp.blogspot.com/-4SGshlI9KDM/WxraLiX1i0I/AAAAAAAAGkI/NOye-8mqXOkq34ob4qdq5wBG_NdYzfizQCLcBGAs/s320/fener%2Bhd%2Blogo.png"
        Antalyaspor.players = gsplayers
        
        let Alanyaspor = team()
        Alanyaspor.name = "Alanyaspor"
        Alanyaspor.year = "1903"
        Alanyaspor.lastyearpoint = "35"
        Alanyaspor.lastyearaverage = "+4"
        Alanyaspor.lastyearposition = "15."
        Alanyaspor.logo = "https://3.bp.blogspot.com/-4SGshlI9KDM/WxraLiX1i0I/AAAAAAAAGkI/NOye-8mqXOkq34ob4qdq5wBG_NdYzfizQCLcBGAs/s320/fener%2Bhd%2Blogo.png"
        Alanyaspor.players = gsplayers
        
        let Sivasspor = team()
        Sivasspor.name = "Sivasspor"
        Sivasspor.year = "1960"
        Sivasspor.lastyearpoint = "34"
        Sivasspor.lastyearaverage = "-40"
        Sivasspor.lastyearposition = "16."
        Sivasspor.logo = "https://3.bp.blogspot.com/-4SGshlI9KDM/WxraLiX1i0I/AAAAAAAAGkI/NOye-8mqXOkq34ob4qdq5wBG_NdYzfizQCLcBGAs/s320/fener%2Bhd%2Blogo.png"
        Sivasspor.players = gsplayers
        
        let ÇaykurRizespor = team()
        ÇaykurRizespor.name = "Çaykur Rizespor"
        ÇaykurRizespor.year = "1953"
        ÇaykurRizespor.lastyearpoint = "33"
        ÇaykurRizespor.lastyearaverage = "-10"
        ÇaykurRizespor.lastyearposition = "17."
        ÇaykurRizespor.logo = "https://3.bp.blogspot.com/-4SGshlI9KDM/WxraLiX1i0I/AAAAAAAAGkI/NOye-8mqXOkq34ob4qdq5wBG_NdYzfizQCLcBGAs/s320/fener%2Bhd%2Blogo.png"
        ÇaykurRizespor.players = gsplayers
        
        let Ankaragücü = team()
        Ankaragücü.name = "Ankaragücü"
        Ankaragücü.year = "1946"
        Ankaragücü.lastyearpoint = "23"
        Ankaragücü.lastyearaverage = "-40"
        Ankaragücü.lastyearposition = "18."
        Ankaragücü.logo = "https://3.bp.blogspot.com/-4SGshlI9KDM/WxraLiX1i0I/AAAAAAAAGkI/NOye-8mqXOkq34ob4qdq5wBG_NdYzfizQCLcBGAs/s320/fener%2Bhd%2Blogo.png"
        Ankaragücü.players = gsplayers
        
        
        teams.append(Galatasaray)
        teams.append(Fenerbahçe)
        teams.append(Beşiktaş)
        teams.append(Osmanlıspor)
        teams.append(Erzurumspor)
        teams.append(Göztepe)
        teams.append(Bursaspor)
        teams.append(Konyaspor)
        teams.append(Akhisarspor)
        teams.append(Kayserispor)
        teams.append(Kasımpaşa)
        teams.append(Trabzonspor)
        teams.append(Başakşehir)
        teams.append(Antalyaspor)
        teams.append(Alanyaspor)
        teams.append(Sivasspor)
        teams.append(ÇaykurRizespor)
        teams.append(Ankaragücü)
     
        
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let teamcell = puanlartable.dequeueReusableCell(withIdentifier: "puantable", for: indexPath) as! puanlarTableViewCell
        
       teamcell.takimadilabel.text = teams[indexPath.row].name
        teamcell.puanlabel.text = teams[indexPath.row].lastyearpoint
        teamcell.avarajlabel.text = teams[indexPath.row].lastyearaverage
        teamcell.siralamalabel.text = teams[indexPath.row].lastyearposition
        return teamcell
}
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toteamscreen" {
            let destinationVC = segue.destination as? TeamViewController
            destinationVC?.t = self.chosenteam
            destinationVC?.p = self.chosenplayer
            
            
        }

}
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenteam = teams[indexPath.row]
        self.performSegue(withIdentifier: "toteamscreen", sender: nil)
}
  
    
}
