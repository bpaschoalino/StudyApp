//
//  TableViewCell.swift
//  StudyApp
//
//  Created by Mariano on 27/02/23.
//

import Foundation
import UIKit

class TableViewCell: UITableViewCell {
    
    func setup() {
        backgroundColor = .blue
    }
    
    private lazy var button: UIButton = {
        var button = UIButton()
        button.setTitle("button", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var textView: UITextView = {
        let textView = UITextView()
        textView.text = "lksadgfajsdhgfakjsdgfasd"
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Texto de label"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
}
