//
//  main.swift
//  3l_SergeySokolov
//
//  Created by Sergey Sokolov on 14.02.2022.
//

import Foundation

//MARK: - Энамы

enum ActionsWithTheCar {
    case startPower // Запустить двигатель
    case stopPower // Заглушить двигатель
    case openWindows // Открыть окна
    case closeWindows // Закрыть окна
    case loadBags // Погрузить багажник
    case unloadBags // Выгрузить багажник
    case driveForward // Поехать вперед
    case driveBackward // Поехать назад
    case openAuto // Открыть авто
    case closeAuto // Закрыть авто

    var mode: String {
        switch self {
        case .startPower:
            return "запустите двигатель"
        case .stopPower:
            return "заглушите двигатель"
        case .openWindows:
            return "Открыть окна"
        case .closeWindows:
            return "Закрыть окна"
        case .loadBags:
            return "погрузить багажник"
        case .unloadBags:
            return "выгрузитe багажник"
        case .driveForward:
            return "поехать вперед"
        case .driveBackward:
            return "поехать назад"
        case .openAuto:
            return "Открыть авто"
        case .closeAuto:
            return "Закрыть авто"
        }
    }
}

let modeOne = ActionsWithTheCar.startPower
let modeTwo = ActionsWithTheCar.closeWindows
let modeTree = ActionsWithTheCar.unloadBags
let modeFour = ActionsWithTheCar.driveForward
let modeFive = ActionsWithTheCar.openAuto

func modeOutpute(for name: ActionsWithTheCar){
    switch name {
    case .startPower:
        print("Чтобы начать движение \(ActionsWithTheCar.startPower.mode)")
    case .stopPower:
        print("Когда приехали \(ActionsWithTheCar.stopPower.mode)")
    case .openWindows:
        print("Чтобы открыть все окнa нажмите кнопку \(ActionsWithTheCar.openWindows.mode)")
    case .closeWindows:
        print("Чтобы закрыть все окна нажмите кнопку \(ActionsWithTheCar.closeWindows.mode)")
    case .loadBags:
        print("Перед началом поездки нужно \(ActionsWithTheCar.loadBags.mode)")
    case .unloadBags:
        print("Как приедете на место \(ActionsWithTheCar.unloadBags.mode)")
    case .driveForward:
        print("Чтобы \(ActionsWithTheCar.driveForward.mode) включите первую передачу")
    case .driveBackward:
        print("Чтобы \(ActionsWithTheCar.driveBackward.mode) включите заднию передачу")
    case .openAuto:
        print("Чтобы открыть авто нажмите на брелке \(ActionsWithTheCar.openAuto.mode)")
    case .closeAuto:
        print("Чтобы закрыть авто нажмите на брелке \(ActionsWithTheCar.closeAuto.mode)")
    }
}

modeOutpute(for: modeOne)
modeOutpute(for: modeTwo)
modeOutpute(for: modeTree)
modeOutpute(for: modeFour)
modeOutpute(for: modeFive)

//MARK: - Структуры автомобиля и грузовика

struct SportCar {
    var marka: String // Марка авто
    var colorCar: String // Цвет машины
    mutating func changeColor(color: String){
        switch color {
        case "White":
            self.colorCar = "White"
        case "Black":
            self.colorCar = "Black"
        case "Blue":
            self.colorCar = "Blue"
        case "Red":
            self.colorCar = "Red"
        default:
            print("No color cars")
        }
    }
    var ageRelease: Int // Год выпуска
    let trunkVolume: Double // Объем богажника
    var bodyCar: String // Kузов
    mutating func cahgeBodyCar(body: String){
        switch body {
        case "Cupe":
            self.bodyCar = "Cupe"
        case "Sedan":
            self.bodyCar = "Sedan"
        case "Universal":
            self.bodyCar = "Universal"
        case "Trunk":
            self.bodyCar = "Trunk"
        default:
            print("No bodyCar")
        }
    }
    var automaticTransmission: Bool // Kоробка автомат?
    let forcePower: Double // Мощность двигателя сил
    var mileageCar: Int // Пробег
    mutating func changeMileageCar(Int: Double) {
        if (mileageCar <= 20000) {
            print("Очень плохо")
            } else {
        print("Очень хорошо")
        }
    }
    let engineCar: String // Тип двигателя
}

struct TrunkCar {
    var marka: String // Марка авто
    var colorCar: String // Цвет машины
    mutating func changeColor(color: String){
        switch color {
        case "White":
            self.colorCar = "White"
        case "Black":
            self.colorCar = "Black"
        case "Blue":
            self.colorCar = "Blue"
        case "Red":
            self.colorCar = "Red"
        default:
            print("No color cars")
        }
    }
    let ageRelease: Int // Год выпуска
    let trunkVolume: Double // Объем богажника
    var bodyCar: String // Kузов
    mutating func cahgeBodyCar(body: String){
        switch body {
        case "Cupe":
            self.bodyCar = "Cupe"
        case "Sedan":
            self.bodyCar = "Sedan"
        case "Universal":
            self.bodyCar = "Universal"
        case "Trunk":
            self.bodyCar = "Trunk"
        default:
            print("No bodyCar")
        }
    }
    var automaticTransmission: Bool // Kоробка автомат?
    let forcePower: Double // Мощность двигателя сил
    var mileageCar: Int // Пробег
    mutating func changeMileageCar(Int: Double) {
        if (mileageCar <= 20000) {
            print("Очень плохо")
            } else {
        print("Очень хорошо")
        }
    }
    let engineCar: String // Тип двигателя
}

var sportCarOne = SportCar(marka: "BMW",
                           colorCar: "Red",
                           ageRelease: 2017,
                           trunkVolume: 200,
                           bodyCar: "Coupe",
                           automaticTransmission: false,
                           forcePower: 645.4,
                           mileageCar: 89654,
                           engineCar: "Gazoline")
var sportCarTwo = SportCar(marka: "AUDI",
                           colorCar: "Black",
                           ageRelease: 2012,
                           trunkVolume: 200,
                           bodyCar: "Sedan",
                           automaticTransmission: true,
                           forcePower: 902.4,
                           mileageCar: 23990,
                           engineCar: "Gazoline")
var trunkCarOne = TrunkCar(marka: "Tesla",
                           colorCar: "Grey",
                           ageRelease: 2022,
                           trunkVolume: 1200,
                           bodyCar: "Trunk",
                           automaticTransmission: true,
                           forcePower: 1271.5,
                           mileageCar: 129,
                           engineCar: "Electro")
var trunkCarTwo = TrunkCar(marka: "Mersedes",
                           colorCar: "Black",
                           ageRelease: 2012,
                           trunkVolume: 1230,
                           bodyCar: "Trunk",
                           automaticTransmission: false,
                           forcePower: 645.4,
                           mileageCar: 119654,
                           engineCar: "Gazoline")

sportCarOne.changeColor(color: "Red")
sportCarOne.marka = "Porsche"
sportCarOne.cahgeBodyCar(body: "Cupe")
sportCarTwo.cahgeBodyCar(body: "Sedan")
sportCarTwo.marka = "BMW"
sportCarTwo.ageRelease = 2011
sportCarOne.automaticTransmission = true
trunkCarOne.automaticTransmission = false
trunkCarOne.changeColor(color: "Black")
trunkCarOne.marka = "Volvo"
trunkCarTwo.mileageCar = 1233444

print(trunkCarTwo.marka)
print(trunkCarTwo.colorCar)
print(trunkCarTwo.ageRelease)
print(sportCarOne.mileageCar)
print(sportCarOne.marka)
print(sportCarTwo.mileageCar)
