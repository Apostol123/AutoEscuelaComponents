//
//  ActionButton.swift
//  AutoEscuelaComponents
//
//  Created by user159106 on 7/7/20.
//

import UIKit
import Reusable

public class ActionButton: UIView, NibOwnerLoadable{

    @IBOutlet var button: UIButton!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var action : (() -> Void)?
    
    public init() {
        super.init(frame: CGRect.zero)
        self.loadNibContent()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadNibContent()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.loadNibContent()
    }
   
    public func configure(title: String, action: (() -> Void)?) {
        self.button.titleLabel?.textColor = .white
        self.button.setTitle(title, for: .normal)
        self.button.backgroundColor = UIColor(hex: "#6D58FF")
        self.action = action
        self.button.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        self.button.layer.cornerRadius = 10
        self.button.clipsToBounds = true
        
    }
    
    @objc func onClickButton() {
        if let action = action {
            action()
        }
    }
}
