//
//  BedroomFactory.swift
//  Abstract Factory
//
//  Created by Admin on 26.12.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

class BedroomFactory: AbstractFactory {
    
    func createChair() -> Chair {
        print("Стул для спальни создан")
        return ChairBedroom()
    }
    
    func createSofa() -> Sofa {
        print("Диван для спальни создан")
        return SofaBedroom()
    }
    
    func createTable() -> Table {
        print("Стол для спальни создан")
        return TableBedroom()
    }
}
