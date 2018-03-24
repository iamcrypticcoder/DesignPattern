//
//  AbstractGUIFactory.swift
//  AbstractFactory
//
//  Created by KAZI MAHBUBUR RAHMAN on 24/3/18.
//  Copyright © 2018 KAZI MAHBUBUR RAHMAN. All rights reserved.
//

import Foundation

protocol AbstractGUIFactory {
    func createButton() -> Button
    func createWindow() -> Window
}
