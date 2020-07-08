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
    }
}
