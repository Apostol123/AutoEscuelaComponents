//
//  ListItemView.swift
//  AutoEscuelaComponents
//
//  Created by user159106 on 7/14/20.
//

import UIKit

public class CustomTextField: UITextField {
}

public class ListItemView: UIView {
    
    public var isEmpty: Bool {
        get {
            if let text = listItemText.text, text.isEmpty {
                return true
            } else {
                return false
            }
        }
    }
  
    public var listItemText: CustomTextField
    var errorLabel: UILabel?
    var borderView: UIView?
    var stackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.distribution = .fill
        return stackView
    }()
    
    public  override init(frame: CGRect) {
        listItemText =  CustomTextField(frame: .zero)
        super.init(frame: frame)
        self.fill(view: stackView,edgeInset: UIEdgeInsets(top: 16, left: -16, bottom: 0, right:-16))
    }
    
    public func configureLabel(text: String?, placeholder: String?, isSecure: Bool? = nil) {
        listItemText.font = UIFont(name: "Avenir Next", size: 20)
        listItemText.textColor = .black
        listItemText.placeholder = placeholder
        listItemText.text = text
        if let isSecure = isSecure {
            listItemText.isSecureTextEntry = isSecure
        }

        borderView = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        
        borderView?.backgroundColor = .white
        borderView?.layer.borderWidth = 3
        borderView?.layer.cornerRadius = 5
        borderView?.layer.borderColor = UIColor.black.cgColor
        borderView?.fill(view: listItemText,edgeInset: UIEdgeInsets(top: 8, left: -8, bottom: 8, right: -8))
    
        
        stackView.addArrangedSubview(borderView!)
        
    }
    
    public func setUpIsError(errorText: String) {
        if let _ = errorLabel {
            
        } else {
            errorLabel = UILabel(frame: CGRect(x: 0, y: 0, width: listItemText.frame.width, height: listItemText.frame.height))
            errorLabel?.text = errorText
            errorLabel?.font = UIFont(name: "Avenir Next", size: 16)
            errorLabel?.textColor = .red
            stackView.addArrangedSubview(errorLabel!)
        }
    }
    
    
    public  required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    public func clearErrorLabel() {
        if let errorLabel = errorLabel {
            stackView.removeArrangedSubview(errorLabel)
            self.errorLabel?.removeFromSuperview()
            self.errorLabel = nil
            self.layoutIfNeeded()
        }
    }
    
}

