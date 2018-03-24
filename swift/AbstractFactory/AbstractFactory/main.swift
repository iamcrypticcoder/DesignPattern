//
//  main.swift
//  AbstractFactory
//
//  Created by KAZI MAHBUBUR RAHMAN on 24/3/18.
//  Copyright © 2018 KAZI MAHBUBUR RAHMAN. All rights reserved.
//

import Foundation


let guiBuilder: GUIBuilder = GUIBuilder(platform: "Windows")

let window: Window = guiBuilder.buildWindow()
window.setTitle("Mahbub")
window.show()

let button: Button = guiBuilder.buildButton()
button.setTitle("Connect")
button.show()
