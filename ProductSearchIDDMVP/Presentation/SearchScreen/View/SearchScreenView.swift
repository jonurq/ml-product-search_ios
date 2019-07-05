//
//  SearchScreenView.swift
//  ProductSearchIDDMVP
//
//  Created by Jonatan Urquiza on 7/4/19.
//  Copyright © 2019 Jonatan Urquiza. All rights reserved.
//

import UIKit

class SearchScreenView: UIView {
    
    var products: [ProductItem] = []

    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .white
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateProducts(_ newProducts: [ProductItem]) {
        products = newProducts
        collectionView.reloadData()
    }
    
    func clearProducts() {
        products.removeAll()
    }
    
    private func setup() {
        
        // CollectionView
        collectionView.register(SearchScreenCollectionViewCell.self, forCellWithReuseIdentifier: SearchScreenCollectionViewCell.cellId)
        collectionView.delegate = self
        collectionView.dataSource = self
        
        addSubview(collectionView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
            ])
    }
}

extension SearchScreenView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchScreenCollectionViewCell.cellId, for: indexPath) as! SearchScreenCollectionViewCell
        cell.configure(model: products[indexPath.row])
        cell.backgroundColor = .red
        return cell
    }
}

extension SearchScreenView: UICollectionViewDelegate {
    
}
