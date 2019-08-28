//
//  DetailPictureCollectionViewCell.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/30/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import UIKit
import SDWebImage

class DetailPictureCollectionViewCell: UICollectionViewCell {
    static let cellId = "DetailPictureCollectionViewCellIdentifier"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .white
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        setupConstraints()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setup() {
        addSubview(imageView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            ])
    }
    
    func set(image: String) {
        imageView.sd_setImage(with: URL(string: image), completed: nil)
    }
}
