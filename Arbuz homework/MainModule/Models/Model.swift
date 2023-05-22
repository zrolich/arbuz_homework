//
//  GoodsModel.swift
//  Arbuz homework
//
//  Created by Zhanna Rolich on 22.05.2023.
//

import Foundation

class CartModel {
    var selectedGoodsArray: [GoodsModel] = [
        GoodsModel(goodsName: "Буррата", goodsCount: 1, goodsPrice: 2500, goodsPhoto: "burrata", goodsUnitType: "шт", goodsUnitQuantity: 1),
        GoodsModel(goodsName: "Кинза", goodsCount: 0.2, goodsPrice: 3200, goodsPhoto: "kinza", goodsUnitType: "кг", goodsUnitQuantity: 0.1),
        GoodsModel(goodsName: "Кефир", goodsCount: 2, goodsPrice: 530, goodsPhoto: "kefir", goodsUnitType: "шт", goodsUnitQuantity: 1),
        GoodsModel(goodsName: "Сметана", goodsCount: 1, goodsPrice: 680, goodsPhoto: "smetana", goodsUnitType: "шт", goodsUnitQuantity: 1),
        GoodsModel(goodsName: "Тушенка", goodsCount: 1, goodsPrice: 850, goodsPhoto: "tushenka", goodsUnitType: "шт", goodsUnitQuantity: 1),
        GoodsModel(goodsName: "Морковь", goodsCount: 1.5, goodsPrice: 400, goodsPhoto: "morkov", goodsUnitType: "кг", goodsUnitQuantity: 0.5)
    ]
    
    func countAmount(index: Int) -> Decimal {
        (selectedGoodsArray[index].goodsCount)*(selectedGoodsArray[index].goodsPrice)
    }
    
    func decreaseBtnAct(index: Int) {
        if selectedGoodsArray[index].goodsCount <= selectedGoodsArray[index].goodsUnitQuantity {
            selectedGoodsArray.remove(at: index)
        } else {
            selectedGoodsArray[index].goodsCount -= selectedGoodsArray[index].goodsUnitQuantity
        }
    }
    
    func increaseBtnAct(index: Int){
        selectedGoodsArray[index].goodsCount += selectedGoodsArray[index].goodsUnitQuantity
    }
    
    func deleteBtnAct(index: Int){
        selectedGoodsArray.remove(at: index)
    }
    
    func countSumValues() -> SumValues {
        let sum = SumValues()
        sum.sumOfGoods = 0
        sum.totalAmountPerWeek = 0
        sum.totalAmountPerMonth = 0
        sum.costOfDelivery = 700

        for item in 0...selectedGoodsArray.count-1 {
            sum.sumOfGoods += (selectedGoodsArray[item].goodsCount) * selectedGoodsArray[item].goodsPrice
        }
        if sum.sumOfGoods >= freeMinOrder {
            sum.costOfDelivery = 0
        }
        sum.totalAmountPerWeek = sum.sumOfGoods + sum.costOfDelivery
        sum.totalAmountPerMonth = sum.totalAmountPerWeek * 4

        return sum
    }
    
    func goodsCVIndexCount(count: Int) -> CGFloat{
        let index = Double(count)*0.28
        return index
    }
}

class GoodsModel {
    var goodsName: String?
    var goodsCount: Decimal
    var goodsPrice: Decimal
    var goodsPhoto: String?
    var goodsUnitType: String?
    var goodsUnitQuantity: Decimal
    
    init(goodsName: String? = nil, goodsCount: Decimal = 0.0, goodsPrice: Decimal = 0, goodsPhoto: String? = nil, goodsUnitType: String? = nil, goodsUnitQuantity: Decimal = 0.0) {
        self.goodsName = goodsName
        self.goodsCount = goodsCount
        self.goodsPrice = goodsPrice
        self.goodsPhoto = goodsPhoto
        self.goodsUnitType = goodsUnitType
        self.goodsUnitQuantity = goodsUnitQuantity
    }
}

class SumValues {
    var sumOfGoods: Decimal
    var costOfDelivery: Decimal
    var totalAmountPerWeek: Decimal
    var totalAmountPerMonth: Decimal

    init(sumOfGoods: Decimal = 0.0, costOfDelivery: Decimal = 0.0, totalAmountPerWeek: Decimal = 0.0, totalAmountPerMonth: Decimal = 0.0) {
        self.sumOfGoods = sumOfGoods
        self.costOfDelivery = costOfDelivery
        self.totalAmountPerWeek = totalAmountPerWeek
        self.totalAmountPerMonth = totalAmountPerMonth
    }
}
