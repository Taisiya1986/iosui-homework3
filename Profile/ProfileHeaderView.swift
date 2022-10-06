//
//  ProfileHeaderView.swift
//  Base UI components
//
//  Created by Таисия Кутявина on 30.09.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    let mainView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let avatarView: UIImageView = {
        let avatar = UIImageView()
        avatar.frame = CGRect(x: 16, y: 16, width: 120, height: 120)
        avatar.layer.borderWidth = 3
        avatar.layer.borderColor = UIColor.white.cgColor
        avatar.layer.cornerRadius = avatar.frame.width / 2
        avatar.image = UIImage(named: "img")
        avatar.clipsToBounds = true
        return avatar
    }()
    
    let labelName: UILabel = {
        let label = UILabel()
        label.text = "Hipster cat"
        label.font = .systemFont(ofSize: 18, weight: .bold)
        return label
    }()
    
    let buttonStatus: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 4
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        return button
    }()
    
    let labelStatus: UILabel = {
        let status = UILabel()
        status.text = "Waiting for something..."
        status.font = .systemFont(ofSize: 14, weight: .regular)
        status.textColor = .gray
        return status
    }()
    
    func setupLabelName() {
        labelName.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelName.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 160),
            labelName.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 27)
        ])
    }
    
    func setupButtonStatus() {
        buttonStatus.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonStatus.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            buttonStatus.widthAnchor.constraint(equalTo: mainView.widthAnchor, constant: -32),
            buttonStatus.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 152)
        ])
    }
    
    func setupLabelStatus() {
        labelStatus.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelStatus.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 160),
            labelStatus.bottomAnchor.constraint(equalTo: buttonStatus.topAnchor, constant: -34)
        ])
    }
    
    func setupMainView() {
        mainView.addSubview(avatarView)
        mainView.addSubview(labelName)
        setupLabelName()
        mainView.addSubview(buttonStatus)
        setupButtonStatus()
    }
    
}




