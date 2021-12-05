//
//  TodoRowView.swift
//  TodoApp
//
//  Created by Majkel on 04/12/2021.
//

import SwiftUI

struct TodoRowView: View {
    let item: ItemModel
    
    var body: some View {
        VStack {
            Text(item.name)
                .foregroundColor(item.isCompleted ? .green : .red)
        }
    }
}

struct TodoRowView_Previews: PreviewProvider {
    static var item1 = ItemModel(name: "1 item", category: "Home", isCompleted: true)
    static var item2 = ItemModel(name: "2 item", category: "Work", isCompleted: false)
    static var item3 = ItemModel(name: "3 item", category: "Code", isCompleted: false)
    static var item4 = ItemModel(name: "4 item", category: "Hobby", isCompleted: true)
    static var item5 = ItemModel(name: "5 item", category: "Shopping", isCompleted: true)
    static var item6 = ItemModel(name: "6 item", category: "Other", isCompleted: false)

    
    static var previews: some View {
        Group {
            TodoRowView(item: item1)
            TodoRowView(item: item2)
            TodoRowView(item: item3)
            TodoRowView(item: item4)
            TodoRowView(item: item5)
            TodoRowView(item: item6)
        }
        .previewLayout(.sizeThatFits)

    }
}

