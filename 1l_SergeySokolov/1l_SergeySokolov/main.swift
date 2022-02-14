//
//  main.swift
//  1l_SergeySokolov
//
//  Created by Sergey Sokolov on 14.02.2022.
//

import Foundation

print ("Задание №1 Решить квадратное уравнение")

let a: Double = 13.0 // Первая переменная а
let b: Double = 15.0 // Вторая переменная b
let c: Double = -11.0 // Свободный член c

let d: Double = (b * b) + (-4 * a) * c

if d > 0 { // (положительный) то у уровнения есть 2 различных корня
    let x1: Double = (-b + sqrt(d)) / (2 * a)
    let x2: Double = (-b - sqrt(d)) / (2 * a)
    print(String(format: "x1 = %.2f; x2 = %.2f", x1, x2))

} else if d == 0 { // дискриминант равен 0 то уровнение имеет 2 равных корня
    let x1x2: Double = (-b + sqrt(d)) / (2 * a)
    print ("x=",x1x2)
} else if d < 0 { // (отрицательный) то у уровнения НЕТ действительных корней
    print ("Не имеет коней")
}


print ("Задача №2 Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.")
let katetA = 3.0 // Катет А
let katetB = 4.0 // Катет В

let areaS = 1/2 * katetA * katetB // Ищем площадь треугольника S по формуле 1/2*A*B
print ("Площадь треугольник = ", areaS)

let gipotinuzaC = sqrt(katetA * katetA + katetB * katetB) //Формула гипотенузы sqrt(katetA^2*katetB^2)
print("Гипотенузa = ", gipotinuzaC)

let pirimetrL = (katetA + katetB + gipotinuzaC) // обычная формула складование всех сторон
print("Пириметр = ",pirimetrL)


print("Задача №3 Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.")

var summaVklada: Double = 50000.0 // сумма вклада
let procent: Double = 6.50 // Годовая ставка
let yaer: Double = 20.0 // Срок вклада в годах

let result = summaVklada * pow(1 + procent / 100, yaer)
print(String(format: "Сумма вклада через 5 лет = %.2f", result))
