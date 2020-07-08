//
//  ActionButtonViewController.swift
//  
//
//  Created by user159106 on 7/7/20.
//

import UIKit
import AutoEscuelaComponents

class ActionButtonViewController: UIViewController {
    
    let demoTitle = "ActionButtonViewController"

    @IBOutlet var actionButton: ActionButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actionButton.configure(title: "Mi Button", action: { print("Hola mundo")})
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
