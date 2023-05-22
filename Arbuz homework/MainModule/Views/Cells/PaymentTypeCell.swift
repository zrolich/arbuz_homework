//
//  PaymentTypeCell.swift
//  Arbuz homework
//
//  Created by Zhanna Rolich on 21.05.2023.
//

import UIKit

class PaymentTypeCell: UICollectionViewCell {
    var paymentTypeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 1
        return label
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        contentView.addSubview(paymentTypeLabel)
        NSLayoutConstraint.activate([
            paymentTypeLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            paymentTypeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            paymentTypeLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            paymentTypeLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
