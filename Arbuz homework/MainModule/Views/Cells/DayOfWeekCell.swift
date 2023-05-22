//
//  DayOfWeekCell.swift
//  Arbuz homework
//
//  Created by Zhanna Rolich on 19.05.2023.
//

import UIKit

class DayOfWeekCell: UICollectionViewCell {
    
    var dayWeekNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        return label
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        contentView.addSubview(dayWeekNameLabel)
        
        NSLayoutConstraint.activate([
            dayWeekNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            dayWeekNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            dayWeekNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            dayWeekNameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
