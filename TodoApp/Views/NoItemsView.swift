//
//  NoItemsView.swift
//  TodoApp
//
//  Created by Majkel on 05/12/2021.
//

import SwiftUI

struct NoItemsView: View {
    
    var body: some View {
        VStack(spacing: 35) {
            Text("There are no items...")
                .font(.largeTitle)
                .bold()
            Text("Click the Add button and prepare new item to do!")
                .font(.body)
            Spacer()
        }
        .padding()
        .frame(width: .infinity, height: .infinity, alignment: .center)
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NoItemsView()
                .navigationTitle("No Items")
        }
    }
}
