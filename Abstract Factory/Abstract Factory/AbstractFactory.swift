//
//  AbstractFactory.swift
//  Abstract Factory
//
//  Created by Admin on 26.12.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

protocol AbstractFactory {
    func createChair() -> Chair
    func createSofa() -> Sofa
    func createTable() -> Table
}
