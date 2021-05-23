//
//  String.swift
//  InterfacePrototyping
//
//  Created by Валерий Игнатьев on 23.05.21.
//

import Foundation

//extension String: Identifiable {
//    public var id: String { return self }
//}

//ForEach берет в качестве аргумента массив Array Identifiable элементов, а строки Strings НЕ являются Identifiable.
//Переменная id имеет ТИП String и просто возвращает self, то есть String. Strings являются Equatable.
//Не хотим делать все строки в приложении Identifiable. Хотим их сделать Identifiable только в ForEach.
//К счастью, ForEach понимает, что иногда вы будете передавать массив Array чего-то, что вы не можете заставить реализовать протокол Identifiable.
