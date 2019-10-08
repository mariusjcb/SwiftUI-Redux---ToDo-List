//
//  Reducer.swift
//  First Redux&Combine App
//
//  Created by Marius Ilie on 08/10/2019.
//  Copyright © 2019 Marius Ilie. All rights reserved.
//

import Foundation

protocol ReduceStore: ObservableObject {
    associatedtype ReducerType: Reducer
    
    var currentState: ReducerType.StateType { get set }
    var state: ReducerType.StateType { get }
    var reducer: ReducerType { get set }
    
    init(_ initialState: ReducerType.StateType, reducer: ReducerType)
    func dispatch(action: ReducerType.ActionType)
}

extension ReduceStore {
    func dispatch(action: ReducerType.ActionType) {
        currentState = reducer
            .reduce(currentState, action: action)
    }
}
