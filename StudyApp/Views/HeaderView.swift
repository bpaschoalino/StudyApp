//
//  HeaderView.swift
//  StudyApp
//
//  Created by Bruno on 27/02/23.
//

import Foundation
import UIKit

class HeaderView: UIView {
    
    lazy var searchBar: UITextField = {
        let text = UITextField()
        text.placeholder = "Campo de Busca"
        // Tira as constraints padroes quando estiver fazendo programatico para nao quebrar a view.
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    lazy var button: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    init() {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        constraintUI()
        
    }
    
    private func constraintUI() {
        addSubview(searchBar)
        addSubview(button)
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            searchBar.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            searchBar.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            searchBar.trailingAnchor.constraint(equalTo: button.leadingAnchor, constant: -8),
            
            button.leadingAnchor.constraint(equalTo: searchBar.trailingAnchor, constant: 8),
            button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            button.centerYAnchor.constraint(equalTo: searchBar.centerYAnchor)
            
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
