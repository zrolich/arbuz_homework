//
//  GoodsCollectionViewCell.swift
//  Arbuz homework
//
//  Created by Zhanna Rolich on 18.05.2023.
//

import UIKit

class GoodsCell: UICollectionViewCell {
    
    
    var goodsImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    var goodsName: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    var goodsCountTypeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.italicSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        
        return label
    }()
    
    lazy var decreaseQuantityButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "minus"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(decreaseQuantity), for: .touchUpInside)
        button.tag = 1
        return button
    }()
    
    var decreaseButtonAction: ((Any) -> Void)?
    
    @objc func decreaseQuantity(sender: Any){
        self.decreaseButtonAction?(sender)
    }
    
    var goodsCount: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        return label
    }()
    
    lazy var increaseQuantityButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(increaseQuantity), for: .touchUpInside)
        button.tag = 1
        return button
    }()
    
    var increaseButtonAction: ((Any) -> Void)?
    
    @objc func increaseQuantity(sender: Any){
        self.increaseButtonAction?(sender)
    }
    
    var quantityStackView = UIStackView()
    
    lazy var deleteButton: UIButton = {
        let deleteButton = UIButton()
        deleteButton.translatesAutoresizingMaskIntoConstraints = false
        deleteButton.setImage(UIImage(systemName: "xmark.circle"), for: .normal)
        deleteButton.tintColor = .black
        deleteButton.addTarget(self, action: #selector(deleteBtn), for: .touchUpInside)
        deleteButton.tag = 1
        return deleteButton
    }()
    
    var deleteButtonAction: ((Any) -> Void)?
    
    @objc func deleteBtn(sender: Any) {
        self.deleteButtonAction?(sender)
    }
    
    var amountLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        return label
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        configureStackView()
        setupViews()
        setConstraints()
    }
    
    private func configureStackView(){
        quantityStackView.addArrangedSubview(decreaseQuantityButton)
        quantityStackView.addArrangedSubview(goodsCount)
        quantityStackView.addArrangedSubview(increaseQuantityButton)
        quantityStackView.translatesAutoresizingMaskIntoConstraints = false
        quantityStackView.axis = .horizontal
        quantityStackView.distribution = .fillProportionally
        quantityStackView.spacing = 15
        quantityStackView.alignment = .leading
        quantityStackView.backgroundColor = .systemGray5
        quantityStackView.layer.cornerRadius = 8
    }
    
    private func setupViews(){
        contentView.addSubview(goodsImage)
        contentView.addSubview(goodsName)
        contentView.addSubview(goodsCountTypeLabel)
        contentView.addSubview(quantityStackView)
        contentView.addSubview(deleteButton)
        contentView.addSubview(amountLabel)
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            goodsImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            goodsImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            goodsImage.heightAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.25),
            goodsImage.widthAnchor.constraint(equalTo: goodsImage.heightAnchor)
        ])
        
        NSLayoutConstraint.activate([
            goodsName.topAnchor.constraint(equalTo: contentView.topAnchor),
            goodsName.leadingAnchor.constraint(equalTo: goodsImage.trailingAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            goodsCountTypeLabel.topAnchor.constraint(equalTo: goodsName.bottomAnchor, constant: 3),
            goodsCountTypeLabel.leadingAnchor.constraint(equalTo: goodsName.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            quantityStackView.leadingAnchor.constraint(equalTo: goodsName.leadingAnchor),
            quantityStackView.bottomAnchor.constraint(equalTo: goodsImage.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            deleteButton.topAnchor.constraint(equalTo: contentView.topAnchor),
            deleteButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            amountLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            amountLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

