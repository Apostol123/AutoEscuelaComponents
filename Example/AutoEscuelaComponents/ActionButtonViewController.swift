//
//  ActionButtonViewController.swift
//  
//
//  Created by user159106 on 7/7/20.
//

import UIKit
import AutoEscuelaComponents

class ActionButtonViewController: UIViewController {
    

    @IBOutlet var actionButton: ActionButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actionButton.configure(title: "My Button", action: buttonTapped)
    }
    
    init() {
           super.init(nibName: nil, bundle: nil)
           self.title = "Action Button Demo"
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
    
    func buttonTapped() {
        let alertController = UIAlertController(title: "ButtonPressed", message: "buttonPressed", preferredStyle: .alert)
        let alertButton = UIAlertAction(title: "OK", style: .cancel)
        alertController.addAction(alertButton)
        self.present(alertController, animated: true)
    }
}
