import Foundation
import Glibc
 
print("hello world")
var name: String = "Aaryan"
name = "Arush"
let a: Int = 5 // constant
let b: Int = 6
// a = 6 // this will throw error
/* */
print(a)
print("value of name is \(name) and the number is \(a)")
print("the sum is \(a+b), the product is \(a*b)")
 
if(a < b) {
    print("\(a) is less than b")
} else {
    print("\(a) is greater than b")
}
 
let arr = [56, 7, -4, 67]
var sum = 0
 
for num in arr {
    sum += num
}
 
print("the sum is \(sum)")
 
// TASK: print the numbers between 34 & 89
for x in 34..<89 {
    print(x)
}
 
for _ in 1...100 {
    print("Hello world")
}
 
// TASK: print the alphabects a to z
for y in UnicodeScalar("a").value...UnicodeScalar("z").value {
    print(UnicodeScalar(y)!)
}
 
func helloWorld(name: String) {
    print("hello \(name)")
}
 
func add(a: Int, b: Int) -> Int {
    return (a + b)
}
 
helloWorld(name: "Aaryan")
print(add(a: 3, b: 4))
 
// TASK: add(...) --> return the sum of all the params [Variadic Parameter]
func myadd(_ num: Int...) -> Int {
    var result = 0
    for x in num {
        result += x
    }
    return result
}

print(myadd(3, 5, 6, 6))
 
func factorial(num: Int) -> Int {
    var result = 1
    for x in 2...num {
        result *= x
    }
    return result
}

print(factorial(num: 3)) // 3 * 2 * 1

func fibonacci(num: Int) -> Int {
    if num <= 1 {
        return num
    }
    var a = 0
    var b = 1
    for _ in 2...num {
        let temp = a + b
        a = b
        b = temp
    }
    return b
}

print(fibonacci(num: 6)) // prints 8

func printPattern(n: Int) {
    for i in 1...n {
        for _ in 1...i {
            print("*", terminator: " ")
        }
        print()
    }
}

printPattern(n: 5) 

func printTriangle(n: Int) {
    for i in 1...n {
        for j in 1...n {
            if j <= n - i {
                print(" ", terminator: "")
            } else {
                print("* ", terminator: "")
            }
        }
        print()
    }
}

printTriangle(n: 7)