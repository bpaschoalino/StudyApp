//
//  TableViewCell.swift
//  StudyApp
//
//  Created by Bruno on 27/02/23.
//

import Foundation
import UIKit

class TableViewCell: UITableViewCell {
    
    func setup() {
        translatesAutoresizingMaskIntoConstraints = false
        constraintsUi()
    }
    
    private lazy var favoriteButton: UIButton = {
        var favoriteButton = UIButton()
        favoriteButton.setImage(UIImage(systemName: "star"), for: .normal)
        favoriteButton.translatesAutoresizingMaskIntoConstraints = false
        return favoriteButton
    }()
    
    private lazy var movieTagsTextView: UITextView = {
        let movieTagsTextView = UITextView()
        movieTagsTextView.text = "Botar as tags de uma forma boa depois"
        movieTagsTextView.translatesAutoresizingMaskIntoConstraints = false
        return movieTagsTextView
    }()
    
    private lazy var movieTitleLabel: UILabel = {
        let movieTitleLabel = UILabel()
        movieTitleLabel.text = "Titulo de um Filme bem Grande"
        movieTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        return movieTitleLabel
    }()
    
    private lazy var moviePosterImage: UIImageView = {
        let moviePosterImage = UIImageView()
        moviePosterImage.image = UIImage(systemName: "gear")
        moviePosterImage.translatesAutoresizingMaskIntoConstraints = false
        return moviePosterImage
    }()
    
    private func constraintsUi() {
        contentView.addSubview(favoriteButton)
        contentView.addSubview(movieTagsTextView)
        contentView.addSubview(movieTitleLabel)
        contentView.addSubview(moviePosterImage)
        
        NSLayoutConstraint.activate([
            moviePosterImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            moviePosterImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            moviePosterImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
//            moviePosterImage.trailingAnchor.constraint(equalTo: movieTitleLabel.leadingAnchor, constant: -8),
//            moviePosterImage.trailingAnchor.constraint(equalTo: movieTagsTextView.leadingAnchor, constant: -8),
            
            movieTitleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            movieTitleLabel.leadingAnchor.constraint(equalTo: moviePosterImage.trailingAnchor, constant: 8),
            movieTitleLabel.bottomAnchor.constraint(equalTo: movieTagsTextView.topAnchor, constant: -8),
            
            movieTagsTextView.topAnchor.constraint(equalTo: movieTitleLabel.bottomAnchor, constant: 8),
            movieTagsTextView.leadingAnchor.constraint(equalTo: moviePosterImage.trailingAnchor, constant: 8),
            movieTagsTextView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            movieTagsTextView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            
            favoriteButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            favoriteButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8)
            
        ])
    }
}
