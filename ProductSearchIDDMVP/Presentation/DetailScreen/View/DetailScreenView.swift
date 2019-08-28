//
//  DetailScreenView.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/23/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import UIKit

class DetailScreenView: UIView {
    
    var model: ProductDetailModel?
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.isPagingEnabled = true
        view.showsHorizontalScrollIndicator = false
        return view
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
        backgroundColor = .white
        
        collectionView.register(DetailPictureCollectionViewCell.self, forCellWithReuseIdentifier: DetailPictureCollectionViewCell.cellId)
        collectionView.dataSource = self
        collectionView.delegate = self
        
        //addSubview(titleLabel)
        addSubview(collectionView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.heightAnchor.constraint(equalToConstant: 400),
            ])
    }
    
    func setupModel(_ model: ProductDetailModel) {
        titleLabel.text = model.id
        self.model = model
    }
}

extension DetailScreenView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DetailPictureCollectionViewCell.cellId, for: indexPath) as! DetailPictureCollectionViewCell
        cell.set(image: "https://mla-s1-p.mlstatic.com/958437-MLA31037401705_062019-O.jpg")
        return cell
    }
    
}

extension DetailScreenView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width, height: 400)
    }
}
