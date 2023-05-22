//
//  ViewController.swift
//  Arbuz homework
//
//  Created by Zhanna Rolich on 18.05.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = true
        scrollView.alwaysBounceVertical = true
        return scrollView
    }()
    
    private let contentView: UIView = {
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        return contentView
    }()
    
    let infoDeliveryLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = infoDeliveryText
        label.font = UIFont.italicSystemFont(ofSize: 16)
        label.textAlignment = .center
        label.textColor = .systemGray
        label.numberOfLines = 0
        return label
    }()
    
    let goodsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(GoodsCell.self, forCellWithReuseIdentifier: String(describing: GoodsCell.self))
        return collectionView
    }()
    
    var goodsTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.italicSystemFont(ofSize: 17)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.text = goodsLblText
        return label
    }()
    
    var amountGoodsLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.italicSystemFont(ofSize: 17)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        return label
    }()
    
    var deliveryTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.italicSystemFont(ofSize: 17)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.text = deliveryText
        return label
    }()
    
    var amountDeliveryLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.italicSystemFont(ofSize: 17)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        return label
    }()
    
    var totalWeekTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.italicSystemFont(ofSize: 17)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.text = totalWeekLblText
        return label
    }()
    
    var totalWeekLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.italicSystemFont(ofSize: 17)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        return label
    }()
    
    var addressLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.text = addressLbltext
        return label
    }()
    
    var addressTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = addressTxtViewText
        textView.textColor = .lightGray
        textView.font = UIFont.systemFont(ofSize: 16)
        textView.backgroundColor = .white
        textView.layer.cornerRadius = 8
        
        return textView
    }()
    
    var dayOfWeekLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.text = dayOfWeekLblText
        return label
    }()
    
    let valuesDayOfWeekCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(DayOfWeekCell.self, forCellWithReuseIdentifier: String(describing: DayOfWeekCell.self))
        collectionView.backgroundColor = .systemGray6
        return collectionView
    }()
    
    var periodOfDayLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.text = periodOfDayLblText
        return label
    }()
    
    let valuesPeriodOfDayCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(PeriodOfDayCell.self, forCellWithReuseIdentifier: String(describing: PeriodOfDayCell.self))
        collectionView.backgroundColor = .systemGray6
        return collectionView
    }()
    
    var contactInformationLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.text = contactInformationLblText
        return label
    }()
    
    var nameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.contentVerticalAlignment = .center
        textField.textAlignment = .left
        textField.placeholder = nameTextFieldPlchldrText
        textField.clearButtonMode = .whileEditing
        return textField
    }()
    
    var phoneTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.contentVerticalAlignment = .center
        textField.textAlignment = .left
        textField.placeholder = phoneTextFieldPlchldrText
        textField.keyboardType = .numberPad
        textField.clearButtonMode = .whileEditing
        return textField
    }()
    
    var paymentTypeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.text = paymentTypeLblText
        return label
    }()
    
    let paymentTypeCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(PaymentTypeCell.self, forCellWithReuseIdentifier: String(describing: PaymentTypeCell.self))
        collectionView.backgroundColor = .systemGray6
        return collectionView
    }()
    
    var lackOfGoodsLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.text = lackOfGoodsLblText
        return label
    }()
    
    let lackOfGoodsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(LackOfGoodsCell.self, forCellWithReuseIdentifier: String(describing: LackOfGoodsCell.self))
        collectionView.backgroundColor = .systemGray6
        return collectionView
    }()
    
    var amountGoodsPerMonthTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 19)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.text = amountGoodsPerMnthTxtLblText
        
        return label
    }()
    
    var amountGoodsPerMonthLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 19)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        return label
    }()
    
    lazy var subscribeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(subscribeBtnText, for: .normal)
        button.backgroundColor = .systemGray4
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitleColor(.black, for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(subscribe), for: .touchUpInside)
        button.tag = 1
        return button
    }()
    
    @objc func subscribe() {
        if nameTextField.text == "" || phoneTextField.text == "" || addressTextView.text == "" || selectedDayOfWeek == false || selectedPeriodOfDay == false || selectedPaymentType == false || selectedLackOfGoods == false {
            self.alert(title: alertTitleWarningText, message: alertMessageWarningText, style: .alert)
        } else {
            self.alert(title: alertTitleAcceptText, message: alertMessageAcceptText, style: .alert)
        }
    }
    
    let sectionInserts = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    let model = CartModel()
    
    var lastIndexActiveDayOfWeek: IndexPath = [1, 0]
    var lastIndexActivePeriodOfDay: IndexPath = [1, 0]
    var lastIndexActivePaymentType: IndexPath = [1, 0]
    var lastIndexActiveLackOfGoods: IndexPath = [1, 0]
    var selectedDayOfWeek: Bool = false
    var selectedPeriodOfDay: Bool = false
    var selectedPaymentType: Bool = false
    var selectedLackOfGoods: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
        setupDelegates()
        amountsPrint()
    }
    
    private func setupViews() {
        title = vcTitleText
        view.backgroundColor = .systemGray6
        goodsCollectionView.backgroundColor = .white
        configureTapGesture()
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(infoDeliveryLabel)
        contentView.addSubview(goodsCollectionView)
        contentView.addSubview(goodsTextLabel)
        contentView.addSubview(amountGoodsLabel)
        contentView.addSubview(deliveryTextLabel)
        contentView.addSubview(amountDeliveryLabel)
        contentView.addSubview(totalWeekTextLabel)
        contentView.addSubview(totalWeekLabel)
        contentView.addSubview(addressLabel)
        contentView.addSubview(addressTextView)
        contentView.addSubview(dayOfWeekLabel)
        contentView.addSubview(valuesDayOfWeekCollectionView)
        contentView.addSubview(periodOfDayLabel)
        contentView.addSubview(valuesPeriodOfDayCollectionView)
        contentView.addSubview(contactInformationLabel)
        contentView.addSubview(nameTextField)
        contentView.addSubview(phoneTextField)
        contentView.addSubview(paymentTypeLabel)
        contentView.addSubview(paymentTypeCollectionView)
        contentView.addSubview(lackOfGoodsLabel)
        contentView.addSubview(lackOfGoodsCollectionView)
        contentView.addSubview(amountGoodsPerMonthTextLabel)
        contentView.addSubview(amountGoodsPerMonthLabel)
        contentView.addSubview(subscribeButton)
    }
    
    private func setupDelegates() {
        goodsCollectionView.delegate = self
        goodsCollectionView.dataSource = self
        valuesDayOfWeekCollectionView.delegate = self
        valuesDayOfWeekCollectionView.dataSource = self
        valuesPeriodOfDayCollectionView.delegate = self
        valuesPeriodOfDayCollectionView.dataSource = self
        paymentTypeCollectionView.delegate = self
        paymentTypeCollectionView.dataSource = self
        lackOfGoodsCollectionView.delegate = self
        lackOfGoodsCollectionView.dataSource = self
        addressTextView.delegate = self
        nameTextField.delegate = self
        phoneTextField.delegate = self
    }
    
    private func configureTapGesture(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        tapGesture.cancelsTouchesInView = false
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    
    private func amountsPrint(){
        let sum = model.countSumValues()
        
        amountGoodsLabel.text = "\(sum.sumOfGoods) \(moneyCurrencyText)"
        amountDeliveryLabel.text = "\(sum.costOfDelivery) \(moneyCurrencyText)"
        totalWeekLabel.text = "\(sum.totalAmountPerWeek) \(moneyCurrencyText)"
        amountGoodsPerMonthLabel.text = "\(sum.totalAmountPerMonth) \(moneyCurrencyText)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            addressTextView.resignFirstResponder()
        }
        super.touchesBegan(touches, with: event!)
    }
    
    func alert (title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: alertButtonText, style: .default) { (action) in }
        
        alertController.addAction(action)
        self.present(alertController, animated: true)
    }
}

extension ViewController: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if(text == "\n") {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView {
        case goodsCollectionView:
            return CGSize(width: collectionView.frame.width*0.98, height: collectionView.frame.width/4)
        case valuesDayOfWeekCollectionView:
            return CGSize(width: collectionView.frame.width*0.1, height: collectionView.frame.width/4)
        case valuesPeriodOfDayCollectionView:
            return CGSize(width: collectionView.frame.width*0.24, height: collectionView.frame.width/4)
        case paymentTypeCollectionView:
            return CGSize(width: collectionView.frame.width*0.62, height: collectionView.frame.width/4)
        default:
            return CGSize(width: collectionView.frame.width*0.32, height: collectionView.frame.width/4)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case goodsCollectionView:
            return model.selectedGoodsArray.count
        case valuesDayOfWeekCollectionView:
            return dayOfWeeksArray.count
        case valuesPeriodOfDayCollectionView:
            return periodOfDayArray.count
        case paymentTypeCollectionView:
            return paymentTypeArray.count
        default:
            return lackOfGoodsArray.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case goodsCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: GoodsCell.self), for: indexPath) as? GoodsCell
            else {
                return UICollectionViewCell()
            }

            cell.goodsImage.image = UIImage(named: model.selectedGoodsArray[indexPath.item].goodsPhoto ?? noPhotoNameText)
            cell.goodsName.text = model.selectedGoodsArray[indexPath.item].goodsName ?? noNameGoodsText
            cell.goodsCountTypeLabel.text = model.selectedGoodsArray[indexPath.item].goodsUnitType ?? unitPcText
            cell.goodsCount.text = "\(model.selectedGoodsArray[indexPath.item].goodsCount)"
            cell.amountLabel.text = "\(model.countAmount(index: indexPath.item)) \(moneyCurrencyText)"
            cell.decreaseButtonAction = { sender in
                self.model.decreaseBtnAct(index: indexPath.item)
                self.goodsCollectionView.reloadData()
                self.setConstraints()
                self.amountsPrint()
            }
            cell.increaseButtonAction = { sender in
                self.model.increaseBtnAct(index: indexPath.item)
                self.goodsCollectionView.reloadData()
                self.amountsPrint()
            }
            cell.deleteButtonAction = { sender in
                self.model.deleteBtnAct(index: indexPath.item)
                self.goodsCollectionView.reloadData()
                self.setConstraints()
            }
            return cell
        case valuesDayOfWeekCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: DayOfWeekCell.self), for: indexPath) as? DayOfWeekCell
            else {
                return UICollectionViewCell()
            }
            cell.dayWeekNameLabel.text = dayOfWeeksArray[indexPath.item]
            return cell
        case valuesPeriodOfDayCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: PeriodOfDayCell.self), for: indexPath) as? PeriodOfDayCell
            else {
                return UICollectionViewCell()
            }
            cell.periodOfDay.text = periodOfDayArray[indexPath.item]
            return cell
        case paymentTypeCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: PaymentTypeCell.self), for: indexPath) as? PaymentTypeCell
            else {
                return UICollectionViewCell()
            }
            cell.paymentTypeLabel.text = paymentTypeArray[indexPath.item]
            return cell
        default:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: LackOfGoodsCell.self), for: indexPath) as? LackOfGoodsCell
            else {
                return UICollectionViewCell()
            }
            cell.lackOfGoodDecisionTypeLabel.text = lackOfGoodsArray[indexPath.item]
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch collectionView {
        case valuesDayOfWeekCollectionView:
            if lastIndexActiveDayOfWeek != indexPath {
                let cell = valuesDayOfWeekCollectionView.cellForItem(at: indexPath) as! DayOfWeekCell
                cell.dayWeekNameLabel.backgroundColor = .systemGray3
                
                let usedCell = valuesDayOfWeekCollectionView.cellForItem(at: lastIndexActiveDayOfWeek) as? DayOfWeekCell
                usedCell?.dayWeekNameLabel.backgroundColor = .systemGray6
                lastIndexActiveDayOfWeek = indexPath
                if cell.isSelected {
                    selectedDayOfWeek = true }
            }
        case valuesPeriodOfDayCollectionView:
            if lastIndexActivePeriodOfDay != indexPath {
                let cell = valuesPeriodOfDayCollectionView.cellForItem(at: indexPath) as! PeriodOfDayCell
                cell.periodOfDay.backgroundColor = .systemGray3
                
                let usedCell = valuesPeriodOfDayCollectionView.cellForItem(at: lastIndexActivePeriodOfDay) as? PeriodOfDayCell
                usedCell?.periodOfDay.backgroundColor = .systemGray6
                lastIndexActivePeriodOfDay = indexPath
                if cell.isSelected {
                    selectedPeriodOfDay = true
                }
            }
        case paymentTypeCollectionView:
            if lastIndexActivePaymentType != indexPath {
                let cell = paymentTypeCollectionView.cellForItem(at: indexPath) as! PaymentTypeCell
                cell.paymentTypeLabel.backgroundColor = .systemGray3
                
                let usedCell = paymentTypeCollectionView.cellForItem(at: lastIndexActivePaymentType) as? PaymentTypeCell
                usedCell?.paymentTypeLabel.backgroundColor = .systemGray6
                lastIndexActivePaymentType = indexPath
                if cell.isSelected {
                selectedPaymentType = true
                }
            }
        case lackOfGoodsCollectionView:
            if lastIndexActiveLackOfGoods != indexPath {
                let cell = lackOfGoodsCollectionView.cellForItem(at: indexPath) as! LackOfGoodsCell
                cell.lackOfGoodDecisionTypeLabel.backgroundColor = .systemGray3
                
                let usedCell = lackOfGoodsCollectionView.cellForItem(at: lastIndexActiveLackOfGoods) as? LackOfGoodsCell
                usedCell?.lackOfGoodDecisionTypeLabel.backgroundColor = .systemGray6
                lastIndexActiveLackOfGoods = indexPath
                if cell.isSelected {
                selectedLackOfGoods = true
                }
            }
        default:
            print("goodsCollectionView")
        }
    }
}

extension ViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        
        NSLayoutConstraint.activate([
            infoDeliveryLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            infoDeliveryLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            infoDeliveryLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            goodsCollectionView.topAnchor.constraint(equalTo: infoDeliveryLabel.bottomAnchor, constant: 10),
            goodsCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            goodsCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            goodsCollectionView.heightAnchor.constraint(equalTo: goodsCollectionView.widthAnchor, multiplier: model.goodsCVIndexCount(count: model.selectedGoodsArray.count))
        ])
        
        NSLayoutConstraint.activate([
            goodsTextLabel.topAnchor.constraint(equalTo: goodsCollectionView.bottomAnchor, constant: 15),
            goodsTextLabel.leadingAnchor.constraint(equalTo: goodsCollectionView.leadingAnchor, constant: 2)
        ])
        
        NSLayoutConstraint.activate([
            amountGoodsLabel.topAnchor.constraint(equalTo: goodsCollectionView.bottomAnchor, constant: 15),
            amountGoodsLabel.trailingAnchor.constraint(equalTo: goodsCollectionView.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            deliveryTextLabel.topAnchor.constraint(equalTo: goodsTextLabel.bottomAnchor, constant: 5),
            deliveryTextLabel.leadingAnchor.constraint(equalTo: goodsCollectionView.leadingAnchor, constant: 2)
        ])
        
        NSLayoutConstraint.activate([
            amountDeliveryLabel.topAnchor.constraint(equalTo: amountGoodsLabel.bottomAnchor, constant: 5),
            amountDeliveryLabel.trailingAnchor.constraint(equalTo: goodsCollectionView.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            totalWeekTextLabel.topAnchor.constraint(equalTo: deliveryTextLabel.bottomAnchor, constant: 5),
            totalWeekTextLabel.leadingAnchor.constraint(equalTo: goodsCollectionView.leadingAnchor, constant: 2)
        ])
        
        NSLayoutConstraint.activate([
            totalWeekLabel.topAnchor.constraint(equalTo: amountDeliveryLabel.bottomAnchor, constant: 5),
            totalWeekLabel.trailingAnchor.constraint(equalTo: goodsCollectionView.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            addressLabel.topAnchor.constraint(equalTo: totalWeekTextLabel.bottomAnchor, constant: 15),
            addressLabel.leadingAnchor.constraint(equalTo: goodsCollectionView.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            addressTextView.topAnchor.constraint(equalTo: addressLabel.bottomAnchor, constant: 15),
            addressTextView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            addressTextView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            addressTextView.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            dayOfWeekLabel.topAnchor.constraint(equalTo: addressTextView.bottomAnchor, constant: 15),
            dayOfWeekLabel.leadingAnchor.constraint(equalTo: goodsCollectionView.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            valuesDayOfWeekCollectionView.topAnchor.constraint(equalTo: dayOfWeekLabel.bottomAnchor, constant: 10),
            valuesDayOfWeekCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            valuesDayOfWeekCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            valuesDayOfWeekCollectionView.heightAnchor.constraint(equalTo: goodsCollectionView.widthAnchor, multiplier: 0.06)
        ])
        
        NSLayoutConstraint.activate([
            periodOfDayLabel.topAnchor.constraint(equalTo: valuesDayOfWeekCollectionView.bottomAnchor, constant: 10),
            periodOfDayLabel.leadingAnchor.constraint(equalTo: goodsCollectionView.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            valuesPeriodOfDayCollectionView.topAnchor.constraint(equalTo: periodOfDayLabel.bottomAnchor, constant: 10),
            valuesPeriodOfDayCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            valuesPeriodOfDayCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            valuesPeriodOfDayCollectionView.heightAnchor.constraint(equalTo: goodsCollectionView.widthAnchor, multiplier: 0.06)
        ])
        
        NSLayoutConstraint.activate([
            contactInformationLabel.topAnchor.constraint(equalTo: valuesPeriodOfDayCollectionView.bottomAnchor, constant: 15),
            contactInformationLabel.leadingAnchor.constraint(equalTo: goodsCollectionView.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: contactInformationLabel.bottomAnchor, constant: 15),
            nameTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            nameTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            nameTextField.heightAnchor.constraint(equalToConstant: 40),
        ])
        
        NSLayoutConstraint.activate([
            phoneTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 5),
            phoneTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            phoneTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            phoneTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            paymentTypeLabel.topAnchor.constraint(equalTo: phoneTextField.bottomAnchor, constant: 15),
            paymentTypeLabel.leadingAnchor.constraint(equalTo: goodsCollectionView.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            paymentTypeCollectionView.topAnchor.constraint(equalTo: paymentTypeLabel.bottomAnchor, constant: 5),
            paymentTypeCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            paymentTypeCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            paymentTypeCollectionView.heightAnchor.constraint(equalTo: goodsCollectionView.widthAnchor, multiplier: 0.1)
        ])
        
        NSLayoutConstraint.activate([
            lackOfGoodsLabel.topAnchor.constraint(equalTo: paymentTypeCollectionView.bottomAnchor, constant: 15),
            lackOfGoodsLabel.leadingAnchor.constraint(equalTo: goodsCollectionView.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            lackOfGoodsCollectionView.topAnchor.constraint(equalTo: lackOfGoodsLabel.bottomAnchor, constant: 5),
            lackOfGoodsCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            lackOfGoodsCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            lackOfGoodsCollectionView.heightAnchor.constraint(equalTo: goodsCollectionView.widthAnchor, multiplier: 0.1)
        ])
        
        NSLayoutConstraint.activate([
            amountGoodsPerMonthTextLabel.topAnchor.constraint(equalTo: lackOfGoodsCollectionView.bottomAnchor, constant: 5),
            amountGoodsPerMonthTextLabel.leadingAnchor.constraint(equalTo: goodsCollectionView.leadingAnchor, constant: 2)
        ])
        
        NSLayoutConstraint.activate([
            amountGoodsPerMonthLabel.topAnchor.constraint(equalTo: lackOfGoodsCollectionView.bottomAnchor, constant: 5),
            amountGoodsPerMonthLabel.trailingAnchor.constraint(equalTo: goodsCollectionView.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            subscribeButton.topAnchor.constraint(equalTo: amountGoodsPerMonthTextLabel.bottomAnchor, constant: 25),
            subscribeButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            subscribeButton.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ])
    }
}

