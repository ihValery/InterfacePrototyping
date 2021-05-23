//
//  Prototype.swift
//  InterfacePrototyping
//
//  Created by Валерий Игнатьев on 23.05.21.
//

import Foundation

struct Prototype {
    var backgroundURL: URL?
    var elements = [Element]()
    
    struct Element: Identifiable {
        //Нужна Identifiable эмоджи и уникальность id только в пределах этого документа.
        //с UUID получим огромное количество генераций этих уникальных UUIDs вроде как зря.
        let id: Int
        let text: String
        var x: Int
        var y: Int
        var size: Int
        
        //Создать Element со своим собственным id (с помощью стандартного конструктора) и добавит его прямо в массив elements?
        //Это реально плохо, особенно, если выбирут id и если этот id уже был нами использован для совсем другого Elementa.
        //Для этого делаем "бесплатный" конструктор файлПриватным(privat не дас создать даже Documentu)
        fileprivate init(id: Int, text: String, x: Int, y: Int, size: Int) {
            self.id = id
            self.text = text
            self.x = x
            self.y = y
            self.size = size
        }
    }
    
    private var uniqueElementId = 0
    
    mutating func addElement(_ text: String, x: Int, y: Int, size: Int) {
        uniqueElementId += 1
        elements.append(Element(id: uniqueElementId, text: text, x: x, y: y, size: size))
    }
}
