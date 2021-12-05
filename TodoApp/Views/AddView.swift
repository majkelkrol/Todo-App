//
//  AddView.swift
//  TodoApp
//
//  Created by Majkel on 04/12/2021.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var todoViewModel: TodoViewModel
    @State var text: String = ""
    @State var date = Date()
    @State var category: String = ""
    @State var alertIsVisible = false
    @State var alert: String = ""
    
    var body: some View {
        List {
            Section(header: Text("Name")) {
                TextField("Enter the name od item", text: $text)
            }
            Section(header: Text("Date")) {
                DatePicker("Deadline", selection: $date, displayedComponents: [.date])
            }
            Section(header: Text("Category")) {
                Text("Home")
                Text("Work")
                Text("Code")
                Text("Hobby")
                Text("Shopping")
                Text("Other")
            }
        }
        .navigationBarItems(trailing:
            Button(action: {
                self.saveButton()
            }, label: {
                Text("Save")
                    .bold()
            })
        )
        .navigationTitle("Add an Item")
        .alert(isPresented: $alertIsVisible) {
            showAlert()
        }
    }
    func saveButton() {
        if textIsOk() {
            todoViewModel.addItem(name: text, category: category)
            presentationMode.wrappedValue.dismiss()
        }
    }
    func textIsOk() -> Bool {
        if text.count < 1 {
            alert = "Write the name of item!"
            alertIsVisible.toggle()
                return false
            }
        return true
    }
    func showAlert() -> Alert {
        return Alert(title: Text(alert), dismissButton: .default(Text("OK")))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(TodoViewModel())
    }
}
