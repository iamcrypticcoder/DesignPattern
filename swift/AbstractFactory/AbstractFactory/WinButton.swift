//
//  WinButton.swift
//  AbstractFactory
//
//  Created by KAZI MAHBUBUR RAHMAN on 24/3/18.
//  Copyright © 2018 KAZI MAHBUBUR RAHMAN. All rights reserved.
//

import Foundation

class WinButton: Button {
    var title: String?
    
    init() {
        
    }
    
    func setTitle(_ title: String) -> Void {
        self.title = title
    }
    
    func show() -> Void {
        print("Showing Windows style button [Title: \(self.title!)]")
    }
}
