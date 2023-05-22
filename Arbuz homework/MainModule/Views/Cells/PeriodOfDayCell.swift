//
//  PeriodOfDayCell.swift
//  Arbuz homework
//
//  Created by Zhanna Rolich on 19.05.2023.
//

import UIKit

class PeriodOfDayCell: UICollectionViewCell {
    var periodOfDay: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        return label
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        contentView.addSubview(periodOfDay)
        NSLayoutConstraint.activate([
            periodOfDay.topAnchor.constraint(equalTo: contentView.topAnchor),
            periodOfDay.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            periodOfDay.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            periodOfDay.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
