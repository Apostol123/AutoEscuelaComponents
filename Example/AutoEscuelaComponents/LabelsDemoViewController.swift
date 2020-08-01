//
//  LabelsDemoViewController.swift
//  AutoEscuelaComponents_Example
//
//  Created by user159106 on 7/27/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import AutoEscuelaComponents

public class LabelsDemoViewController: UIViewController {
    
   public  lazy  var listItemTextfield: UIView = {
        var customView = UIView(frame: .zero)
        let titleLabel = ListItemView(frame: .zero)
       
        customView.fill(view: listItemTextField)
        return customView
    }()
    
    lazy var titleLabel: TitleLabel = {
        let titleLabel = TitleLabel(frame: .zero)
        titleLabel.configure(text: "My text")
        return titleLabel
    }()
    
    lazy var titleLabelContainer: UIView = {
        let view = UIView(frame: .zero)
        view.fill(view: titleLabel,edgeInset: UIEdgeInsets(top: 16, left: -16, bottom: 0, right: 16))
        return view
    }()
    
    lazy var listItemTextField: ListItemView = {
        let listItemTextField = ListItemView(frame: .zero)
        listItemTextField.configureLabel(text: "Demo text", hint: "THis is my hint")
        listItemTextField.setUpIsError(errorText: "Demo Error")
        return listItemTextField
    }()
    
    lazy  var listItemTextField1Container: UIView = {
        var customView = UIView(frame: .zero)
        customView.fill(view: listItemTextField1)
        return customView
    }()
    
    var errorIsShown: Bool = false
    
    lazy var listItemTextField1: ListItemView = {
        let listItemTextField = ListItemView(frame: .zero)
        listItemTextField.configureLabel(text: "Demo text", hint: "THis is my hint")
        return listItemTextField
    }()
    
    lazy var button: ActionButton = {
        let button = ActionButton(frame: CGRect(x: 0, y: 0, width: 0, height: 80))
        button.configure(title: "Toggle Error", action: toggleError)
        return button
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        return stackView
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.title = "List Item Demo"
        listItemTextField.listItemText.addTarget(self, action: #selector(resetTextField), for: .editingDidBegin)
        listItemTextField1.listItemText.addTarget(self, action: #selector(resetTextField1), for: .editingDidBegin)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func resetTextField() {
        listItemTextField.listItemText.customDelegate?.clearHint()
        listItemTextField.listItemText.customDelegate?.clearErrorLabel()
        errorIsShown = false
    }
    
    @objc func resetTextField1() {
           listItemTextField1.listItemText.customDelegate?.clearHint()
           listItemTextField1.listItemText.customDelegate?.clearErrorLabel()
        errorIsShown = false
       }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpStackView()
    }
    
    func setUpStackView() {
        let freeSpaceView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 200))
        
        freeSpaceView.backgroundColor = UIColor.red
        stackView.axis = .vertical
        stackView.addArrangedSubview(titleLabelContainer)
        stackView.addArrangedSubview(listItemTextfield)
        stackView.addArrangedSubview(listItemTextField1Container)
        stackView.addArrangedSubview(button)
        
        stackView.addArrangedSubview(freeSpaceView)
        
        stackView.distribution = .fill
        self.view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: navigationController!.navigationBar.frame.height + 40).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func toggleError() {
        if errorIsShown {
             errorIsShown = false
            listItemTextField1.clearErrorLabel()
           
        } else {
             errorIsShown = true
            listItemTextField1.setUpIsError(errorText: "Demo Error")
        }
    }
}

