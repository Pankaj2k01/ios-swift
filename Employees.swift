import Foundation

struct Employee {
    let id: Int
    let name: String
    let age: Int
    let department: String
    let salary: Double
}

class CRUDOperations {
    var employees: [Employee] = []

    func create(employee: Employee) {
        employees.append(employee)
        print("Employee created successfully!")
    }

    func readAll() {
        if employees.isEmpty {
            print("No employees found!")
        } else {
            for employee in employees {
                print("ID: \(employee.id), Name: \(employee.name), Age: \(employee.age), Department: \(employee.department), Salary: \(employee.salary)")
            }
        }
    }

    func read(byID id: Int) {
        if let employee = employees.first(where: { $0.id == id }) {
            print("ID: \(employee.id), Name: \(employee.name), Age: \(employee.age), Department: \(employee.department), Salary: \(employee.salary)")
        } else {
            print("Employee not found!")
        }
    }

    func update(employee: Employee) {
        if let index = employees.firstIndex(where: { $0.id == employee.id }) {
            employees[index] = employee
            print("Employee updated successfully!")
        } else {
            print("Employee not found!")
        }
    }

    func delete(byID id: Int) {
        if let index = employees.firstIndex(where: { $0.id == id }) {
            employees.remove(at: index)
            print("Employee deleted successfully!")
        } else {
            print("Employee not found!")
        }
    }
}

class Program {
    let crud: CRUDOperations

    init() {
        crud = CRUDOperations()
    }

    func run() {
        while true {
            print("CRUD Operations Menu:")
            print("1. Create Employee")
            print("2. Read All Employees")
            print("3. Read Employee by ID")
            print("4. Update Employee")
            print("5. Delete Employee")
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
        print("Create Employee")
        print("Enter ID: ")
        let id = Int(readLine(strippingNewline: true) ?? "") ?? 0
        print("Enter Name: ")
        let name = readLine(strippingNewline: true) ?? ""
        print("Enter Age: ")
        let age = Int(readLine(strippingNewline: true) ?? "") ?? 0
        print("Enter Department: ")
        let department = readLine(strippingNewline: true) ?? ""
        print("Enter Salary: ")
        let salary = Double(readLine(strippingNewline: true) ?? "") ?? 0.0

        let employee = Employee(id: id, name: name, age: age, department: department, salary: salary)
        crud.create(employee: employee)
    }

    func readMenu() {
        print("Read Employee by ID")
        print("Enter ID: ")
        let id = Int(readLine(strippingNewline: true) ?? "") ?? 0
        crud.read(byID: id)
    }

    func updateMenu() {
        print("Update Employee")
        print("Enter ID: ")
        let id = Int(readLine(strippingNewline: true) ?? "") ?? 0
        print("Enter new Name: ")
        let name = readLine(strippingNewline: true) ?? ""
        print("Enter new Age: ")
        let age = Int(readLine(strippingNewline: true) ?? "") ?? 0
        print("Enter new Department: ")
        let department = readLine(strippingNewline: true) ?? ""
        print("Enter new Salary: ")
        let salary = Double(readLine(strippingNewline: true) ?? "") ?? 0.0

        let employee = Employee(id: id, name: name, age: age, department: department, salary: salary)
        crud.update(employee: employee)
    }

    func deleteMenu() {
        print("Delete Employee")
        print("Enter ID: ")
        let id = Int(readLine(strippingNewline: true) ?? "") ?? 0
        crud.delete(byID: id)
    }
}

let program = Program()
program.run()