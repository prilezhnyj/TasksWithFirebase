//
//  ViewController.swift
//  TasksWithFirebase
//
//  Created by Максим Боталов on 02.07.2022.
//

import UIKit

class StartViewController: UIViewController {
    
    let greatingLabel = UILabel(text: "👋🏻 Hello", textColor: .black, font: FontSetup.montserratBold(forSize: 64))
    let descriptionLabel = UILabel(text: "All your notes will be stored here. Log in and don't lose them.", textColor: .black, font: FontSetup.montserratRegular(forSize: 20))
    
    let loginLabel = UILabel(text: "Login", textColor: .black, font: FontSetup.montserratRegular(forSize: 14))
    let loginTextField = CustomTextField(font: FontSetup.montserratBold(forSize: 17), isSecure: false)
    let passwordLabel = UILabel(text: "Password", textColor: .black, font: FontSetup.montserratRegular(forSize: 14))
    let passwordTextField = CustomTextField(font: FontSetup.montserratBold(forSize: 17), isSecure: false)
    
    let loginButton = UIButton(titleText: "Login In", titleFont: FontSetup.montserratRegular(forSize: 17), titleColor: .white, backgroundColor: .black, isBorder: false, cornerRadius: 20)
    let signButton = UIButton(titleText: "Sign Up", titleFont: FontSetup.montserratRegular(forSize: 17), titleColor: .black, backgroundColor: .white, isBorder: true, cornerRadius: 20)
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupConstraints()
        setupObjcMethod()
    }
}

// MARK: - @objc methods
extension StartViewController {
    private func setupObjcMethod() {
        loginButton.addTarget(self, action: #selector(loginButtonAction), for: .touchUpInside)
        signButton.addTarget(self, action: #selector(signButtonAction), for: .touchUpInside)
    }
    
    @objc private func loginButtonAction() {
        print(#function)
    }
    
    @objc private func signButtonAction() {
        print(#function)
    }
}

// MARK: - setupConstraints
extension StartViewController {
    private func setupConstraints() {
        view.addSubview(greatingLabel)
        NSLayoutConstraint.activate([
            greatingLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
            greatingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            greatingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)])
        
        view.addSubview(descriptionLabel)
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: greatingLabel.bottomAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)])
        
        let loginStackView = UIStackView(arrangedSubviews: [loginLabel, loginTextField], distribution: .fill, axis: .vertical, spacing: 5)
        let passwordStackView = UIStackView(arrangedSubviews: [passwordLabel, passwordTextField], distribution: .fill, axis: .vertical, spacing: 5)
        let loginAndPasswordStackView = UIStackView(arrangedSubviews: [loginStackView, passwordStackView], distribution: .fill, axis: .vertical, spacing: 25)
        
        view.addSubview(loginAndPasswordStackView)
        NSLayoutConstraint.activate([
            loginAndPasswordStackView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 100),
            loginAndPasswordStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            loginAndPasswordStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)])
        
        view.addSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: loginAndPasswordStackView.bottomAnchor, constant: 100),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 40),
            loginButton.widthAnchor.constraint(equalToConstant: 250)])
        
        view.addSubview(signButton)
        NSLayoutConstraint.activate([
            signButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            signButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signButton.heightAnchor.constraint(equalToConstant: 40),
            signButton.widthAnchor.constraint(equalToConstant: 250)])
    }
}

