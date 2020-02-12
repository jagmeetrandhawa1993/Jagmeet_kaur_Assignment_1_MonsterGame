//
//  MenuViewController.swift
//  Jagmeet_kaur_Assignment_1
//
//  Created by Jagmeet Kaur on 2020-02-12.
//  Copyright © 2020 Jagmeet Kaur. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 self.navigationController?.navigationBar.isHidden=true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startgame(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let lionVC = sb.instantiateViewController(withIdentifier: "to_game") as! GameViewController
        
        self.present(lionVC, animated: true)
    }
    

    @IBAction func scoreboard(_ sender: UIButton) {
        let score = UIStoryboard(name: "Main", bundle: nil)
        let scoreboardVC = score.instantiateViewController(withIdentifier: "to_scoreboard") as! ScoreBoardViewController
        
        self.present(scoreboardVC, animated: true)
        
        
    }
    
    
    
    @IBAction func addplayer(_ sender: UIButton) {
        let add = UIStoryboard(name: "Main", bundle: nil)
               let addplayerVC = add.instantiateViewController(withIdentifier: "to_addplayer") as! AddPlayerViewController
               
               self.present(addplayerVC, animated: true)
        
    }
    
    
}
