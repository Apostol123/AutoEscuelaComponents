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
    var titleLabel: ListItemView?
    var titleLabel2: ListItemView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actionButton.configure(title: "My Button", action: buttonTapped)
        titleLabel = ListItemView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 120))
        titleLabel?.configureLabel(text: "",hint: "My Hint")
        titleLabel?.listItemText.delegate = self
        titleLabel?.setUpIsError(errorText: "MY error")
        titleLabel2 = ListItemView(frame: CGRect(x: 0, y: 0, width: view.frame.height, height: 120))
        titleLabel2!.configureLabel(text: "titleLAbel2", hint: nil)
        
        titleLabel?.translatesAutoresizingMaskIntoConstraints = false
        titleLabel2?.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(titleLabel!)
        view.addSubview(titleLabel2!)
        
        titleLabel?.topAnchor.constraint(equalTo: actionButton.bottomAnchor, constant: 0).isActive = true
        titleLabel?.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        titleLabel?.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true

        titleLabel2!.topAnchor.constraint(equalTo: titleLabel!.bottomAnchor, constant: 8).isActive = true
        titleLabel2!.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        titleLabel2!.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
      
    }
    
    func buttonTapped() {
        let alertController = UIAlertController(title: "ButtonPressed", message: "buttonPressed", preferredStyle: .alert)
        let alertButton = UIAlertAction(title: "OK", style: .cancel)
        alertController.addAction(alertButton)
        self.present(alertController, animated: true)
    }
}

extension ActionButtonViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        titleLabel?.clearErrorLabel()
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        titleLabel?.clearHint()
    }
}
