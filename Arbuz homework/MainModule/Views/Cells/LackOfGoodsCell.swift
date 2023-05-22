//
//  LackOfGoodsCell.swift
//  Arbuz homework
//
//  Created by Zhanna Rolich on 21.05.2023.
//

import UIKit

class LackOfGoodsCell: UICollectionViewCell {
    var lackOfGoodDecisionTypeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 1
        return label
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        contentView.addSubview(lackOfGoodDecisionTypeLabel)
        NSLayoutConstraint.activate([
            lackOfGoodDecisionTypeLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            lackOfGoodDecisionTypeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            lackOfGoodDecisionTypeLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            lackOfGoodDecisionTypeLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
