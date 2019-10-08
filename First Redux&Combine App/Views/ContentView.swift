//
//  ContentView.swift
//  First Redux&Combine App
//
//  Created by Marius Ilie on 08/10/2019.
//  Copyright © 2019 Marius Ilie. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store: TodoStore
    
    var body: some View {
        VStack {
            Text(String("Redux Todo"))
                .font(.title)
                .padding(.top)
            
            TodoListView(store: store)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: MockTodoStore())
    }
}
