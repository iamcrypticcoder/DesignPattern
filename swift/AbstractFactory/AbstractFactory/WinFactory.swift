//
//  WinFactory.swift
//  AbstractFactory
//
//  Created by KAZI MAHBUBUR RAHMAN on 24/3/18.
//  Copyright © 2018 KAZI MAHBUBUR RAHMAN. All rights reserved.
//

import Foundation

class WinFactory : AbstractGUIFactory {
    
    init() {
        
    }
    
    func createButton() -> Button {
        return WinButton()
    }
    
    func createWindow() -> Window {
        return WinWindow()
    }
}
