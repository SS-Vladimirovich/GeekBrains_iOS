//
//  main.swift
//  5l_SergeySokolov
//
//  Created by Sergey Sokolov on 19.02.2022.
//

import Foundation

//MARK: - Энамы
// Действия с машинами

enum CarAction {

    case startPower, stopPower
    case openDoor, closeDoor

    var mode: String {
        switch self {
        case .startPower:
            return ("Чтобы \(CarAction.startPower) нужно \(CarAction.closeDoor)")
        case .stopPower:
            return ("Чтобы заклушить двигатель нажмите на кнопку \(CarAction.stopPower)")
        case .openDoor:
            return ("Чтобы сесть в машину нужно \(CarAction.openDoor)")
        case .closeDoor:
            return ("Чтобы поставить машину на сигнализацию \(CarAction.closeDoor)")
        }
    }
}

//MARK: - Протоколы/protocol

// Протокол Car

protocol CarProtocol {
    var nameMarka: String { get set }
    var color: String { get set }
    var odometrKm: Int { get set }
    var vinNumber: String { get set }
    var carPower: CarAction { get set }
    var carDoor: CarAction { get set }
}

//MARK: - Расширения/extension

//Расширение для спорт кара

extension SportСar {
    func musicVolue() {
        print("Musik MAX!")
    }
}

//Расширение для пикапа

extension TrunkСar {
    func boxVolue(){
        print("Big car!")
    }
}

//Расширение CustomStringConvertible для SportСar

extension SportСar: CustomStringConvertible {
    var description: String {
            return "Marka: \(nameMarka), \nColor car: \(color), \nCar Mileage: \(odometrKm) km, \nVIN: \(vinNumber), \nMax Speed: \(maxSpeed) km/h, \nCar Power: \(carPower), \nCar Door: \(carDoor)"
        }
}

//Расширение CustomStringConvertible для TrunkCar

extension TrunkСar: CustomStringConvertible {
    var description: String {
            return "Marka: \(nameMarka), \nColor car: \(color), \nCar Mileage: \(odometrKm) km, \nVIN: \(vinNumber), \nMax Volue: \(maxVolue) kg, \nCar Power: \(carPower), \nCar Door: \(carDoor)"
        }
}

//MARK: - Класс SPORT CAR

final class SportСar: CarProtocol {

    var nameMarka: String
    var color: String
    var odometrKm: Int
    var vinNumber: String
    var maxSpeed: Int
    var carPower: CarAction
    var carDoor: CarAction

    init(nameMarka: String,
         color: String,
         odometrKm: Int,
         vinNumber: String,
         maxSpeed: Int,
         carPower: CarAction,
         carDoor: CarAction) {
        self.nameMarka = nameMarka
        self.color = color
        self.odometrKm = odometrKm
        self.vinNumber = vinNumber
        self.maxSpeed = maxSpeed
        self.carPower = carPower
        self.carDoor = carDoor
    }
}


//MARK: - Класс TRUNK CAR

final class TrunkСar: CarProtocol {

    var nameMarka: String
    var color: String
    var odometrKm: Int
    var vinNumber: String
    var maxVolue: Double
    var carPower: CarAction 
    var carDoor: CarAction

    init(nameMarka: String,
         color: String,
         odometrKm: Int,
         vinNumber: String,
         maxVolue: Double,
         carPower: CarAction,
         carDoor: CarAction) {
        self.nameMarka = nameMarka
        self.color = color
        self.odometrKm = odometrKm
        self.vinNumber = vinNumber
        self.maxVolue = maxVolue
        self.carPower = carPower
        self.carDoor = carDoor
    }
}

//MARK: -  Объекты

let porsche = SportСar(nameMarka: "Porsche",
                       color: "Red",
                       odometrKm: 12_213,
                       vinNumber: "VIN12312eqe123ew",
                       maxSpeed: 250,
                       carPower: CarAction.startPower,
                       carDoor: CarAction.closeDoor)

let volvo = TrunkСar(nameMarka: "Volvo",
                     color: "White",
                     odometrKm: 234_213,
                     vinNumber: "VIN123dsd12312",
                     maxVolue: 2500,
                     carPower: CarAction.startPower,
                     carDoor: CarAction.openDoor)

//Действия

CarAction.stopPower.mode
CarAction.startPower.mode
CarAction.openDoor.mode
porsche.musicVolue()
volvo.boxVolue()

//Печать

print(porsche.description)
print("___________________")
print(volvo.description)

