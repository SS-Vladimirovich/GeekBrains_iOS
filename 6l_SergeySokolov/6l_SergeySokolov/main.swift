//
//  main.swift
//  6l_SergeySokolov
//
//  Created by Sergey Sokolov on 22.02.2022.
//

import Foundation

//MARK: - Переменные

var peremenayaOne = [String]()
var peremenayaTwo = [Int]()

//MARK: - Структуры

struct Queue <T> {

    var items = [T]()

    mutating func push(item: T) {
        items.append(item)
    }

    mutating func push() -> T {
        return items.removeFirst()
    }

    func filter(_ value: (T) -> Bool) -> [T] {
        var result = [T] ()
        for item in items {
            if value(item) {
                result.append(item)
            }
        }
        return result
    }

    subscript(index: Int) -> T? {
        guard index < items.count, index >= 0 else { return nil }
        return items[index]
    }
}

extension Queue: CustomStringConvertible {
    var description: String {
        return "\(Array(items.reversed()))"
    }
}

//MARK: - Добавление переменных

var arraysOne = Queue(items: peremenayaOne)
arraysOne.push(item: "Papa")
arraysOne.push(item: "Mama")
print(arraysOne.items)

var arraysTwo = Queue(items: peremenayaTwo)
arraysTwo.push(item: 60)
arraysTwo.push(item: 70)
arraysTwo.push(item: 80)
print(arraysTwo.items)
