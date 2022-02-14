//
//  main.swift
//  2l_SergeySokolov
//
//  Created by Sergey Sokolov on 14.02.2022.
//

import Foundation

// MARK: - mission #1

print("1. Написать функцию, которая определяет, четное число или нет.")

let namberOne = [18, 3, 123, 12, 16] // Вводим число для проверки
    func printChekOne() {
        for namber in namberOne {
            if namber % 2 == 0 { // Делим число на 2, так как если оно делиться без остатка то число четное
                print("Чётное число")
            } else {
                print("Нечётное число")
            }
        }
    }

printChekOne()

// MARK: - mission 2

print("2. Написать функцию, которая определяет, делится ли число без остатка на 3.")

let namberTwo = [11, 23, 213, 321] // Вводим число для проверки
        func printChekTwo() {
            for namber in namberTwo {
                if namber % 3 == 0 { // Проверяем на деление без остатка на 3
                    print("Чётное число")
                } else {
                    print("Нечётное число")
                }
            }
        }

printChekTwo()

// MARK: - mission 3

print("3. Создать возрастающий массив из 100 чисел.")

var namberArray = [Int] () // создаем пустой массив
namberArray.append(contentsOf: 1...100) // Добавляем через диапазон 100 числел

print(namberArray)

// MARK: - mission 4

//Будем брать массив с mission 3

print("4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.")

var deleteEvenNumbers = namberArray.filter({$0 % 2 != 0}) // Удаляем все четные числа
var deleteNotDivisibleTree = deleteEvenNumbers.filter({$0 % 3 == 0}) // Удаляем которые не делятся на 3

print(deleteNotDivisibleTree)

//MARK: - mission 5

print("5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.")

var namberFibonacci = [Int] () // создаем пустой массив

func fibForNumSteps(numSteps: Int) -> [Int] {
    var sequence = [0, 1]
    if numSteps <= 1 { // Фикс если написать число 1 для цикла фибоначчи и не выдавало ошибку
        return sequence
    }
    for _ in 0...numSteps - 2 {
        let first = sequence[sequence.count - 2]
        let second = sequence.last ?? first
        sequence.append(first + second)
    }
    return sequence
}

namberFibonacci = fibForNumSteps(numSteps: 50) // Пишем количество элементов массива

print(namberFibonacci)

// MARK: - mission 6

print("6.Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:",
 "a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).",
 "b. Пусть переменная p изначально равна двум — первому простому числу.",
 "c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p..",
 "d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.",
 "e. Повторять шаги c и d, пока возможно.")


var primeNumbers = (2...542).map{$0} // Количество целых чисел
var variableP = 2 // Переменная Р

// Применяем алгоритм Решето Эратосфена
while (variableP.squareNumber() <= 542) {
    primeNumbers.removeAll(where: {$0 >= variableP.squareNumber() && $0.isMultiple(of: variableP)})
    variableP = primeNumbers.first(where: {$0 > variableP}) ?? variableP
}

// Возведение числа в квадрат для Решето Эратосфена
extension Int {
    func squareNumber() -> Int {
        return self * self
    }
}

print("Количество элементов =", primeNumbers.count)
print("Простые числа =", primeNumbers)
