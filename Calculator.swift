import Foundation

class Calculator {
    func add(_ num1: Double, _ num2: Double) -> Double {
        return num1 + num2
    }

    func subtract(_ num1: Double, _ num2: Double) -> Double {
        return num1 - num2
    }

    func multiply(_ num1: Double, _ num2: Double) -> Double {
        return num1 * num2
    }

    func divide(_ num1: Double, _ num2: Double) -> Double {
        if num2 == 0 {
            print("Error: Division by zero!")
            return 0
        }
        return num1 / num2
    }
}

class CalculatorProgram {
    let calculator: Calculator

    init() {
        calculator = Calculator()
    }

    func run() {
        while true {
            print("Calculator Menu:")
            print("1. Add")
            print("2. Subtract")
            print("3. Multiply")
            print("4. Divide")
            print("5. Exit")

            let choice = readLine(strippingNewline: true)

            switch choice {
            case "1":
                addMenu()
            case "2":
                subtractMenu()
            case "3":
                multiplyMenu()
            case "4":
                divideMenu()
            case "5":
                print("Goodbye!")
                return
            default:
                print("Invalid choice. Please try again.")
            }
        }
    }

    func addMenu() {
        print("Add")
        print("Enter first number: ")
        let num1 = Double(readLine(strippingNewline: true) ?? "") ?? 0
        print("Enter second number: ")
        let num2 = Double(readLine(strippingNewline: true) ?? "") ?? 0

        let result = calculator.add(num1, num2)
        print("Result: \(result)")
    }

    func subtractMenu() {
        print("Subtract")
        print("Enter first number: ")
        let num1 = Double(readLine(strippingNewline: true) ?? "") ?? 0
        print("Enter second number: ")
        let num2 = Double(readLine(strippingNewline: true) ?? "") ?? 0

        let result = calculator.subtract(num1, num2)
        print("Result: \(result)")
    }

    func multiplyMenu() {
        print("Multiply")
        print("Enter first number: ")
        let num1 = Double(readLine(strippingNewline: true) ?? "") ?? 0
        print("Enter second number: ")
        let num2 = Double(readLine(strippingNewline: true) ?? "") ?? 0

        let result = calculator.multiply(num1, num2)
        print("Result: \(result)")
    }

    func divideMenu() {
        print("Divide")
        print("Enter first number: ")
        let num1 = Double(readLine(strippingNewline: true) ?? "") ?? 0
        print("Enter second number: ")
        let num2 = Double(readLine(strippingNewline: true) ?? "") ?? 0

        let result = calculator.divide(num1, num2)
        print("Result: \(result)")
    }
}

let program = CalculatorProgram()
program.run()