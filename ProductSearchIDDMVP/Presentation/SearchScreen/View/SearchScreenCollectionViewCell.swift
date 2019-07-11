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
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .green
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.numberOfLines = 3
        titleLabel.font = UIFont.systemFont(ofSize: 14.0)
        return titleLabel
    }()
    
    private let amountLabel: UILabel = {
        let amountLabel = UILabel()
        amountLabel.numberOfLines = 0
        amountLabel.font = UIFont.boldSystemFont(ofSize: 14.0)
        return amountLabel
    }()
    
    private let descriptionLabel: UILabel = {
        let descriptionLabel = UILabel()
        descriptionLabel.numberOfLines = 0
        descriptionLabel.font = UIFont.systemFont(ofSize: 12.0)
        return descriptionLabel
    }()
    
    private let detailsStackView: UIStackView = {
        let detailsStackView = UIStackView()
        detailsStackView.translatesAutoresizingMaskIntoConstraints = false
        detailsStackView.axis = .vertical
        detailsStackView.spacing = 8
        detailsStackView.alignment = .fill
        detailsStackView.distribution = .equalCentering
        return detailsStackView
    }()
    
    private let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    func configure(model: ProductItem) {
        setupView()
        setupConstraints()
        setup(with: model)
    }
    
    func setupView() {
        backgroundColor = .clear
        
        detailsStackView.addArrangedSubview(titleLabel)
        detailsStackView.addArrangedSubview(amountLabel)
        detailsStackView.addArrangedSubview(descriptionLabel)
        
        containerView.addSubview(imageView)
        containerView.addSubview(detailsStackView)
        
        addSubview(containerView)
        
        
        containerView.setShadow()
        containerView.roundCorners()
    }
    
    func setupConstraints() {
        //Image
        NSLayoutConstraint.activate([
            imageView.heightAnchor.constraint(equalTo: containerView.heightAnchor),
            imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor),
            imageView.topAnchor.constraint(equalTo: containerView.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor)
            ])
        
        //Details
        NSLayoutConstraint.activate([
            detailsStackView.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 8),
            detailsStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8),
            detailsStackView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            detailsStackView.topAnchor.constraint(greaterThanOrEqualTo: containerView.topAnchor, constant: 8),
            detailsStackView.bottomAnchor.constraint(greaterThanOrEqualTo: containerView.bottomAnchor, constant: -8)
            ])
        
        
        //Container
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            ])
    }
    
    func setup(with model: ProductItem) {
        titleLabel.text = model.title
        amountLabel.text = model.formattedPrice
        descriptionLabel.text = model.formattedCondition
    }
    
    //Consulta: Download image, en donde?
    
}

extension SearchScreenCollectionViewCell: BaseCellProtocol {
    static var cellId: String {
        return "searchCellIdentifier"
    }
    
    
}
