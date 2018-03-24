//
//  Window.swift
//  AbstractFactory
//
//  Created by KAZI MAHBUBUR RAHMAN on 24/3/18.
//  Copyright © 2018 KAZI MAHBUBUR RAHMAN. All rights reserved.
//

import Foundation

protocol Window {
    func setTitle(_ title: String) -> Void
    func show() -> Void
}
