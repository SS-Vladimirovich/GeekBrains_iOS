//
//  main.swift
//  4l_SergeySokolov
//
//  Created by Sergey Sokolov on 14.02.2022.
//

import Foundation

//MARK: - Энамы

// Действия с машинами
enum CarAction {
    case startPower
    case stopPower
    case openDoor
    case closeDoor
    case openWindows
    case closeWindows
    case massaAutoMax
    case massaAutoMin

    var mode: String {
        switch self {
        case .startPower:
            return "Запустить двигатель"
        case .stopPower:
            return "Заглушить двигатель"
        case .openDoor:
            return "Открыть дверь"
        case .closeDoor:
            return "Закрыть дверь"
        case .openWindows:
            return "Открыть окно"
        case .closeWindows:
            return "Закрыть окно"
        case .massaAutoMax:
            return "Имеет больше вес и полезную нагрузку"
        case .massaAutoMin:
            return "Имеет меньший вес и полезную нагрузку"
        }
    }
}

func modeOutpute(for name: CarAction) {
    switch name {
    case .startPower:
        print("Чтобы \(CarAction.startPower.mode) нужно \(CarAction.closeDoor.mode)")
    case .stopPower:
        print("Чтобы заклушить двигатель нажмите на кнопку \(CarAction.stopPower.mode)")
    case .openDoor:
        print("Чтобы сесть в машину нужно \(CarAction.openDoor.mode)")
    case .closeDoor:
        print("Чтобы поставить машину на сигнализацию \(CarAction.closeDoor.mode)")
    case .openWindows:
        print("Чтобы открыть окно, нажмите на панели клавишу \(CarAction.openWindows.mode)")
    case .closeWindows:
        print("Чтобы закрыть окно, нажмите на панели клавишу \(CarAction.closeWindows.mode)")
    case .massaAutoMax:
        print("Чтобы погрузить больше продуктов поместите их в Trunk так как он \(CarAction.massaAutoMax.mode)")
    case .massaAutoMin:
        print("Лушче не покупать Sport Car так как он \(CarAction.massaAutoMin.mode)")
    }
}

//MARK: - Классы

//Родительский класс
class Cars {
    var marka: String
    var typeCar: String
    var vinNumber: String
    var powerEngine: Int
    var probegKm: Double
    var ageYear: Int

    init? (marka: String,
           typeCar: String,
           vinNumber: String,
           powerEngine: Int,
           probegKm: Double,
           yearsAge: Int) {
        self.marka = marka
        self.typeCar = typeCar
        self.vinNumber = vinNumber
        self.powerEngine = powerEngine
        self.probegKm = probegKm
        guard (1900...2022).contains(yearsAge)
            else {
                print("Нельзя указать такой год выпуска")
                return nil
            }
        self.ageYear = yearsAge
    }
}

//MARK: - Наследник Спорт Машина

final class SportCar: Cars {

    var maxSpeed: Int

    init?(marka: String,
          typeCar: String,
          vinNumber: String,
          powerEngine: Int,
          probegKm: Double,
          yearsAge: Int,
          maxSpeed: Int) {
        self.maxSpeed = maxSpeed
        super.init(marka: "BMW",
                   typeCar: "Coupe",
                   vinNumber: "VIN12313sd1231",
                   powerEngine: 123,
                   probegKm: 123.23,
                   yearsAge: 2017)
    }
}

var bmwSport = SportCar(marka: "BMW",
                        typeCar: "Coupe",
                        vinNumber: "VIN12313sd1231",
                        powerEngine: 787,
                        probegKm: 12_123.00,
                        yearsAge: 2017,
                        maxSpeed: 365)

//Действия с машиной
let modeOne = CarAction.closeWindows
let modeTwo = CarAction.closeDoor
let modeTree = CarAction.openDoor

//выводим напечать в консоль
print(bmwSport?.maxSpeed)
print(bmwSport?.vinNumber)
print(modeOutpute(for: CarAction.closeDoor))
print(modeOutpute(for: CarAction.openDoor))
print(modeOutpute(for: CarAction.massaAutoMin))

//MARK: - Наследник пикап

final class Trunk: Cars {

    var maxWeight: Int

    init?(marka: String,
          typeCar: String,
          vinNumber: String,
          powerEngine: Int,
          probegKm: Double,
          yearsAge: Int,
          maxWeight: Int) {
        self.maxWeight = maxWeight
        super.init(marka: "Mersedes",
                   typeCar: "Pikap",
                   vinNumber: "VIN123sd123se1",
                   powerEngine: 249,
                   probegKm: 232_213.23,
                   yearsAge: 2011)
    }
}

var mersedesBenz = Trunk(marka: "Mersedes",
                         typeCar: "Pikap",
                         vinNumber: "VIN123sd123se1",
                         powerEngine: 249,
                         probegKm: 232_213.23,
                         yearsAge: 2011,
                         maxWeight: 2300)

//Действия с машиной
let mode1 = CarAction.massaAutoMax
let mode2 = CarAction.massaAutoMin
let mode3 = CarAction.stopPower

//выводим напечать в консоль
print(mersedesBenz?.maxWeight)
print(mersedesBenz?.probegKm)
print(modeOutpute(for: CarAction.massaAutoMin))
print(modeOutpute(for: CarAction.massaAutoMax))
print(modeOutpute(for: CarAction.startPower))
