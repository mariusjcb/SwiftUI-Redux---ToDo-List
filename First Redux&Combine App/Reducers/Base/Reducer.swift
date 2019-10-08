//
//  Reducer.swift
//  First Redux&Combine App
//
//  Created by Marius Ilie on 08/10/2019.
//  Copyright © 2019 Marius Ilie. All rights reserved.
//

import Foundation

protocol Reducer {
    associatedtype ActionType
    associatedtype ItemType: AnyReducible
    associatedtype StateType
    
    func reduce(_ oldState: StateType, action: ActionType) -> StateType
}
