//
//  main.swift
//  7l_SergeySokolov
//
//  Created by Sergey Sokolov on 26.02.2022.
//

import Foundation

//MARK: - Class One

final class Family {

    private var familys = ["Mom": 59, "Dad": 60, "Sister": 36, "Brother": 32]

    func age(name: String) -> Int? {
        return familys[name]
    }

    // Средний возраст
    func generalAge() -> Int {

        if familys.count > 0 {
            var totalAge = 0
            for family in familys {
                totalAge += family.value
            }
            return totalAge / familys.count
        } else {
            return 0
        }
    }
}

let famaly = Family()

if let age = famaly.age(name: "Sister") {
    print(age)
} else {
    print("Wrong family member entered")
}

print(famaly.generalAge())

//MARK: - Enum Error

enum MaterialWarehouseError: Error {
    case errorInventoryName
    case errorCount
    case errorManyCash
    case errorRoom
}

//MARK: - Struct Model

struct Item {
    let price: Int
    let room: Int
    var count: Int
    let product: Names
}

struct Names {
    let name: String
}

//MARK: - Class View and Controller

final class MaterialWarehouse {

    var inventory = ["Wood": Item(price: 10, room: 1, count: 3, product: Names(name: "Wood")),
                     "Metall": Item(price: 20, room: 7, count: 12, product: Names(name: "Metall")),
                     "Plastic": Item(price: 15, room: 2, count: 9, product: Names(name: "Plastic"))]

    var moneyCash = 0

    func sklad(itemNeed name: String) throws -> Names {

        guard let item = inventory[name] else { throw MaterialWarehouseError.errorInventoryName }
        guard item.count > 0 else { throw MaterialWarehouseError.errorCount }
        guard item.price <= moneyCash else { throw MaterialWarehouseError.errorManyCash }

        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem

        print("Material was sklad \(name)")

        return newItem.product
    }
}

let money = MaterialWarehouse()
money.moneyCash = 40

do {
    let product = try money.sklad(itemNeed: "Wood")
    print(product.name)
} catch let error {
    print(error)
}

