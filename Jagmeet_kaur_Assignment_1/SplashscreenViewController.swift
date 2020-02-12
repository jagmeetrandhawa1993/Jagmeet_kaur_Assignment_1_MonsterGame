//
//  SplashscreenViewController.swift
//  Jagmeet_kaur_Assignment_1
//
//  Created by Jagmeet Kaur on 2020-02-12.
//  Copyright © 2020 Jagmeet Kaur. All rights reserved.
//

import UIKit

class SplashscreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        perform(#selector(movetologin), with: nil, afterDelay: 4)
        }


    @objc func movetologin()
        {
            performSegue(withIdentifier: "to_menu", sender: self)
        }
    
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


