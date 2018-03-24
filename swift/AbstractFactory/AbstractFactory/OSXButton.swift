//
//  OSXButton.swift
//  AbstractFactory
//
//  Created by KAZI MAHBUBUR RAHMAN on 24/3/18.
//  Copyright © 2018 KAZI MAHBUBUR RAHMAN. All rights reserved.
//

import Foundation

class OSXButton : Button {
    var title: String?
    
    init() {
        
    }
    
    func setTitle(_ title: String) {
        self.title = title
    }
    
    func show() {
        print("Showing OSX style button [Title: \(self.title!)]")
    }
    
    
}
