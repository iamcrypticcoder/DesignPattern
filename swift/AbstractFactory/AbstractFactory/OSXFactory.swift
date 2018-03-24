//
//  OSXFactory.swift
//  AbstractFactory
//
//  Created by KAZI MAHBUBUR RAHMAN on 24/3/18.
//  Copyright © 2018 KAZI MAHBUBUR RAHMAN. All rights reserved.
//

import Foundation

class OSXFactory : AbstractGUIFactory {
    
    init() {
        
    }
    
    func createButton() -> Button {
        return OSXButton()
    }
    
    func createWindow() -> Window {
        return OSXWindow()
    }
}
