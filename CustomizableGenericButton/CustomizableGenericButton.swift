//
//  CustomizableGenericButton.swift
//  CustomizableGenericButton
//
//  Created by Zeeshan Habib on 13/09/2022.
//

import UIKit

enum GenericButtonType {
    case imgBtn
    case noImgBtn
    case titleBtn
}

protocol CustomizableGenericButtonDelegate {
    func onButtonTapped()
}

class CustomizableGenericButton: UIControl, UIGestureRecognizerDelegate {
    
    //MARK: - IBOutlet
    @IBOutlet weak var vwBG: UIView!
    @IBOutlet weak var imgView: UIView!
    @IBOutlet weak var imgButton: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSubTitle: UILabel!
    
    //MARK: - Variables
    var delegate: CustomizableGenericButtonDelegate?
    
    //MARK: - Functionalities
    private func setupView() {
        self.vwBG.createButton()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(btnActionClick(_:)))
        tapGesture.delegate = self
        self.vwBG.addGestureRecognizer(tapGesture)
    }
    
    func btnSetup(title: String, subTitle: String = "", iconName: String = "", type: GenericButtonType = .titleBtn) {
        
        self.setupView()
        
        switch type {
        case .imgBtn:
            imgView.isHidden = false
            imgButton.image = UIImage(systemName: iconName)
            lblTitle.text = title
            lblSubTitle.text = subTitle
        case .noImgBtn:
            lblTitle.text = title
            lblSubTitle.text = subTitle
        case .titleBtn:
            lblTitle.text = title
            lblSubTitle.text = subTitle
        }
    }
    
    @objc private func btnActionClick(_ sender: UIView) {
        self.delegate?.onButtonTapped()
    }
    
}

extension UIView {
    open func createButton() {
        configView()
        configButtonView()
    }
    
    private func configView() {
        self.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        self.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
    
    private func configButtonView() {
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = 10.0
    }
}
