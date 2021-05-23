//
//  InterfacePrototypingApp.swift
//  InterfacePrototyping
//
//  Created by Валерий Игнатьев on 23.05.21.
//

import SwiftUI

@main
struct InterfacePrototypingApp: App {
    var body: some Scene {
        WindowGroup {
            let doc = IPrototypeDoc()
            IPrototypeDocView(document: doc)
        }
    }
}
