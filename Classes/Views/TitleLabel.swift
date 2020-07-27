//
//  TitleLabel.swift
//  AutoEscuelaComponents
//
//  Created by user159106 on 7/14/20.
//

import UIKit

public class ListItemView: UIView {
    public var listItemText: UITextField
    var errorLabel: UILabel?
    
    public  override init(frame: CGRect) {
        listItemText =  UITextField(frame: .zero)
        super.init(frame: frame)
    }
    
    public func configureLabel(text: String?, hint: String?) {
        listItemText.frame =  CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        listItemText.font = UIFont(name: "Avenir Next", size: 20)
        listItemText.textColor = .black
        listItemText.text = text
        listItemText.layer.borderWidth = 3
        listItemText.layer.borderColor = UIColor.black.cgColor
        
        if let hint = hint {
            setUpHint(hint: hint)
        }
       
        self.fill(view: listItemText, edgeInset: UIEdgeInsets(top: 16 , left: -16, bottom: self.layoutMargins.bottom , right: -16))
    }
    
    func setUpHint(hint: String) {
        listItemText.text = hint
        listItemText.textColor = .gray
    }
    
    public func setUpIsError(errorText: String) {
        errorLabel = UILabel(frame: CGRect(x: 0, y: 0, width: listItemText.frame.width, height: listItemText.frame.height))
        errorLabel?.text = errorText
        errorLabel?.font = UIFont(name: "Avenir Next", size: 16)
        errorLabel?.textColor = .red

        self.addSubview(errorLabel!)
        errorLabel?.translatesAutoresizingMaskIntoConstraints = false
        errorLabel?.topAnchor.constraint(equalTo: listItemText.bottomAnchor, constant: 8).isActive = true
        errorLabel?.leadingAnchor.constraint(equalTo: listItemText.leadingAnchor, constant: 16).isActive = true
        errorLabel?.trailingAnchor.constraint(equalTo: listItemText.trailingAnchor, constant: -16).isActive = true
        errorLabel?.numberOfLines = 0
        errorLabel?.layer.borderWidth = 1
        errorLabel?.layer.borderColor = UIColor.green.cgColor
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.red.cgColor
    }
    
    
    public  required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func clearHint() {
        if listItemText.textColor == UIColor.gray {
            listItemText.text = ""
            listItemText.textColor = UIColor.black
        }
    }
    
    public func clearErrorLabel() {
        if let errorLabel = errorLabel {
            self.willRemoveSubview(errorLabel)
            errorLabel.removeFromSuperview()
            self.layoutIfNeeded()
        }
    }
}
