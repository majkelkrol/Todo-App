//
//  TodoView.swift
//  TodoApp
//
//  Created by Majkel on 04/12/2021.
//

import SwiftUI

struct TodoView: View {
    @EnvironmentObject var todoViewModel: TodoViewModel
    
    var body: some View {
        ZStack {
            if todoViewModel.items.isEmpty{
                NoItemsView()
            } else {
                List {
                    ForEach(todoViewModel.items) { item in
                        TodoRowView(item: item)
                    }
                    .onDelete(perform: todoViewModel.remoweItem)
                }
            }
        }
        .navigationTitle("Todo App")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView()))
    }
}
 
struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TodoView()
        }
        .environmentObject(TodoViewModel())
    }
}

