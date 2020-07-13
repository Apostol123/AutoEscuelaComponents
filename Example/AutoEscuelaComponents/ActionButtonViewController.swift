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
        actionButton.configure(title: "Mi Button", action: buttonTapped)
    }
    
    func buttonTapped() {
        let alertController = UIAlertController(title: "ButtonPressed", message: "buttonPressed", preferredStyle: .alert)
        let alertButton = UIAlertAction(title: "OK", style: .cancel)
        alertController.addAction(alertButton)
        self.present(alertController, animated: true)
    }
}
