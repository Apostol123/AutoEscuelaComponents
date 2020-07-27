//
//  UIViewTools.swift
//  AutoEscuelaComponents
//
//  Created by user159106 on 7/14/20.
//

import UIKit

extension UIView {
    func fill(view : UIView, edgeInset: UIEdgeInsets = UIEdgeInsets.zero) {
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: edgeInset.left).isActive = true
        trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -edgeInset.right).isActive = true
        topAnchor.constraint(equalTo: view.topAnchor, constant: -edgeInset.top).isActive = true
        bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: edgeInset.bottom).isActive = true
        
    }
}
