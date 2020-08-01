//
//  TitleLabel.swift
//  AutoEscuelaComponents
//
//  Created by user159106 on 7/31/20.
//

import Foundation

public class TitleLabel: UIView {
    
    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel(frame: .zero)
        titleLabel.textColor = AutoEscuelaColors.lightBlue
        titleLabel.font = UIFont(name: "AvenirNext-Bold", size: 28)
        return titleLabel
    }()
    
   public  override init(frame: CGRect) {
        super.init(frame: frame)
        self.fill(view: titleLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(text: String) {
        titleLabel.text = text
    }
}
