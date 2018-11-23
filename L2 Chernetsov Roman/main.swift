//
//  main.swift
//  L2 Chernetsov Roman
//
//  Created by Чернецова Юлия on 23/11/2018.
//  Copyright © 2018 Чернецов Роман. All rights reserved.
//

import Foundation
// Домашнее задание 2
//**** Задача №1 Функция,определяющая цетное число или нет
//Вводим число
var res : Bool
var val: Int
print("Введите число:")
let aString : String? = readLine()!
let aInt : Int? =  Int(aString!)

func isDivideByN(number:Int, p:Int)->Bool{
    return (number % p == 0)
}
res = isDivideByN(number: aInt!,p: 2)
switch res {
case false : print("Число \(String(describing: aInt!)) нечетное")
case true  : print("Число \(String(describing: aInt!)) четное")
}

//***** Задача №2
//Функция целочисленного деления на 3
// используем общую  функцию для 1 и 2 заданий

print("Введите число для определения целочисленного деления на 3:")
let bString : String? = readLine()!
let bInt : Int? =  Int(bString!)
res = isDivideByN(number: bInt!,p: 3)
switch res {
case false : print("Число \(String(describing: bInt!)) не делится без остатка на 3")
case true  : print("Число \(String(describing: bInt!)) делится без остатка на 3")
}

//***** начало Задача №3
//Функция создает возрастающий массив из 100 чисел
var nArray:[Int] = []
var nArrayFinaly:[Int] = []
for i in (16...100)
{
   nArray.append(i)
 
}
 print("Вывод массива по задаче 3 :\(nArray)")
//*****  окончание Задача №3

//***** начало Задача №4   Удаление из массива всех четных и чисел с целочисленным делением на 3
nArrayFinaly = nArray
for value in nArray {
    if !isDivideByN(number: value,p: 3)
    {
        
        nArrayFinaly.remove(at: nArrayFinaly.index(of: value)!)

    }
}
 print("Вывод массива по задаче 4 :\(nArrayFinaly)")
    


//*****  окончание Задача №4


//***** начало Задача №5
//Функция Фибоначчи
func fib( _ n: Int) -> Double {
    var fibs: [Double] = [1.0,1.0]
    for i in (2...n)
    {fibs.append(Double(fibs[i-1])+Double(fibs[i-2]))

    }
    return Double(fibs.last!)
}

//print("\(isEven(number: aInt!))")
print("Число Фибоначчи :\(100) равно \(fib(99))")

//var fArray:[NSString] = []
//var stringToInteger: NSString
//var doubleToString: NSString
//
//for i in (1...100)
//{
//    doubleToString = NSString(characters: "\(fib(i))")
//    stringToInteger = (doubleToString)
//
//    fArray.append(stringToInteger)
//
//}
// print("Вывод массива по задаче 5 :\(fArray)")
//print("введено число :\(aInt!)")
//*****  окончание Задача №5
