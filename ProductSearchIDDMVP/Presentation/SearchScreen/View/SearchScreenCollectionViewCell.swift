//
//  SearchScreenCollectionViewCell.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/4/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import UIKit

class SearchScreenCollectionViewCell: UICollectionViewCell {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .green
        imageView.heightAnchor.constraint(equalToConstant: 92).isActive = true
        imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor).isActive = true
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "iPhone Xs MAX 64Gb"
        return titleLabel
    }()
    
    private let amountLabel: UILabel = {
        let amountLabel = UILabel()
        amountLabel.text = "$ 64.000"
        return amountLabel
    }()
    
    private let descriptionLabel: UILabel = {
        let descriptionLabel = UILabel()
        descriptionLabel.text = "$ 64.000"
        return descriptionLabel
    }()
    
    func configure(model: ProductItem) {
        titleLabel.text = model.id
        
        
        let detailsStackView = UIStackView(arrangedSubviews: [titleLabel, amountLabel, descriptionLabel])
        detailsStackView.axis = .vertical
        detailsStackView.spacing = 0
        detailsStackView.alignment = .fill
        detailsStackView.distribution = .fill
        
        let containerStackView = UIStackView(arrangedSubviews: [imageView, detailsStackView])
        containerStackView.axis = .horizontal
        containerStackView.spacing = 12
        containerStackView.alignment = .fill
        containerStackView.distribution = .fill
        
        addSubview(containerStackView)
        
        containerStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            containerStackView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            containerStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            containerStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            containerStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            ])
    }
    
}

extension SearchScreenCollectionViewCell: BaseCellProtocol {
    static var cellId: String {
        return "searchCellIdentifier"
    }
    
    
}
