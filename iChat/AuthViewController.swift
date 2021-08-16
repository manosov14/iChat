//
//  ViewController.swift
//  iChat
//
//  Created by Дмитрий  on 16.08.2021.
//

import UIKit

class AuthViewController: UIViewController {

    let imageView = UIImageView(image: #imageLiteral(resourceName: "Logo"), contentMode: .scaleAspectFit)
    
    let googleLabel = UILabel(text: "Get started with")
    let emailLabel = UILabel(text: "Or sign up with")
    let loginLabel = UILabel(text: "Already onboard?")
    
    let googleButton = UIButton(title: "Google", backgroundColor: .white, titleColor: .black, font: .avenir20(), isShadow: true, cornerRadius: 4)
    let emailButton = UIButton(title: "Email", backgroundColor: .white, titleColor: .buttonTitleRed(), font: .avenir20(), isShadow: true, cornerRadius: 4)
    let loginButton = UIButton(title: "Login", backgroundColor: .black, titleColor: .white, font: .avenir20(), isShadow: false, cornerRadius: 4)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupConstraints()
    }
    
    private func setupConstraints() {
        
        let emailButtonView = ButtonFormView(label: emailLabel, button: emailButton)
        let loginButtonView = ButtonFormView(label: loginLabel, button: loginButton)
        let googleButtonView = ButtonFormView(label: googleLabel, button: googleButton)
        
        view.addSubview(imageView)
        
       
        let stackView = UIStackView(arrangedSubview: [googleButtonView, loginButtonView,  emailButtonView], axis: .vertical, spacing: 24)
        
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 160).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 120),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }


}

// MARK: - SwiftUI
import SwiftUI
struct FlowProvider: PreviewProvider {
    static var previews: some View {
        ContainterView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainterView: UIViewControllerRepresentable {
        
        let tabBar = AuthViewController()
        func makeUIViewController(context: UIViewControllerRepresentableContext<FlowProvider.ContainterView>) -> AuthViewController {
            return tabBar
        }
        
        func updateUIViewController(_ uiViewController: FlowProvider.ContainterView.UIViewControllerType, context: UIViewControllerRepresentableContext<FlowProvider.ContainterView>) {
            
        }
    }
}

