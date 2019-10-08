//
//  ContentView.swift
//  First Redux&Combine App
//
//  Created by Marius Ilie on 08/10/2019.
//  Copyright © 2019 Marius Ilie. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var store: TodoStore
    
    var body: some View {
        Button(action: {
            self.store.dispatch(action: TodoAction.addTodo("1"))
        }, label: {
            Text(String(store.state.count))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TodoStore([TodoItem(id: UUID(), name: "test")], reducer: TodoReducer()))
    }
}
