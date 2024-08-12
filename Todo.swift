import Foundation

struct Todo {
    let id: Int
    let title: String
    let description: String
    var isCompleted: Bool
}

class TodoCRUD {
    var todos: [Todo] = []

    func create(todo: Todo) {
        todos.append(todo)
        print("Todo created successfully!")
    }

    func readAll() {
        if todos.isEmpty {
            print("No todos found!")
        } else {
            for todo in todos {
                print("ID: \(todo.id), Title: \(todo.title), Description: \(todo.description), Completed: \(todo.isCompleted ? "Yes" : "No")")
            }
        }
    }

    func read(byID id: Int) {
        if let todo = todos.first(where: { $0.id == id }) {
            print("ID: \(todo.id), Title: \(todo.title), Description: \(todo.description), Completed: \(todo.isCompleted ? "Yes" : "No")")
        } else {
            print("Todo not found!")
        }
    }

    func update(todo: Todo) {
        if let index = todos.firstIndex(where: { $0.id == todo.id }) {
            todos[index] = todo
            print("Todo updated successfully!")
        } else {
            print("Todo not found!")
        }
    }

    func delete(byID id: Int) {
        if let index = todos.firstIndex(where: { $0.id == id }) {
            todos.remove(at: index)
            print("Todo deleted successfully!")
        } else {
            print("Todo not found!")
        }
    }
}

class TodoProgram {
    let crud: TodoCRUD

    init() {
        crud = TodoCRUD()
    }

    func run() {
        while true {
            print("Todo List Menu:")
            print("1. Create Todo")
            print("2. Read All Todos")
            print("3. Read Todo by ID")
            print("4. Update Todo")
            print("5. Delete Todo")
            print("6. Exit")

            let choice = readLine(strippingNewline: true)

            switch choice {
            case "1":
                createMenu()
            case "2":
                crud.readAll()
            case "3":
                readMenu()
            case "4":
                updateMenu()
            case "5":
                deleteMenu()
            case "6":
                print("Goodbye!")
                return
            default:
                print("Invalid choice. Please try again.")
            }
        }
    }

    func createMenu() {
        print("Create Todo")
        print("Enter ID: ")
        let id = Int(readLine(strippingNewline: true) ?? "") ?? 0
        print("Enter Title: ")
        let title = readLine(strippingNewline: true) ?? ""
        print("Enter Description: ")
        let description = readLine(strippingNewline: true) ?? ""
        let isCompleted = false

        let todo = Todo(id: id, title: title, description: description, isCompleted: isCompleted)
        crud.create(todo: todo)
    }

    func readMenu() {
        print("Read Todo by ID")
        print("Enter ID: ")
        let id = Int(readLine(strippingNewline: true) ?? "") ?? 0
        crud.read(byID: id)
    }

    func updateMenu() {
        print("Update Todo")
        print("Enter ID: ")
        let id = Int(readLine(strippingNewline: true) ?? "") ?? 0
        print("Enter new Title: ")
        let title = readLine(strippingNewline: true) ?? ""
        print("Enter new Description: ")
        let description = readLine(strippingNewline: true) ?? ""
        print("Is Completed? (yes/no): ")
        let isCompleted = readLine(strippingNewline: true) ?? "" == "yes"

        let todo = Todo(id: id, title: title, description: description, isCompleted: isCompleted)
        crud.update(todo: todo)
    }

    func deleteMenu() {
        print("Delete Todo")
        print("Enter ID: ")
        let id = Int(readLine(strippingNewline: true) ?? "") ?? 0
        crud.delete(byID: id)
    }
}

let program = TodoProgram()
program.run()