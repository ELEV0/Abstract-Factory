//
//  KitchenFactory.swift
//  Abstract Factory
//
//  Created by Admin on 26.12.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

class KitchenFactory: AbstractFactory {
    
    func createChair() -> Chair {
        print("Стул для кухни создан")
        return ChairKitchen()
    }
    
    func createSofa() -> Sofa {
        print("Диван для кухни создан")
        return SofaKitchen()
    }
    
    func createTable() -> Table {
        print("Стол для кухни создан")
        return TableKitchen()
    }
    
}
