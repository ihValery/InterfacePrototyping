//
//  Prototype.swift
//  InterfacePrototyping
//
//  Created by Валерий Игнатьев on 23.05.21.
//

import Foundation

struct Prototype {
    var backgroundURL: URL?
    var emojis = [Emoji]()
    
    struct Emoji: Identifiable {
        //Нужна Identifiable эмоджи и уникальность id только в пределах этого документа.
        //с UUID получим огромное количество генераций этих уникальных UUIDs вроде как зря.
        let id: Int
        let text: String
        var x: Int
        var y: Int
        var size: Int
    }
}
