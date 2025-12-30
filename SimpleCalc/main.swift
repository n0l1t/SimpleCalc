public let version:String = "v0.13"

import Foundation

func plus(number1:String, number2:String) -> Int{
    if let n1 = Int(number1){
        if  let n2 = Int(number2){
            return n1+n2
        }else{
            print("Unexepted error: Check your second number")
        }
    }else{
        print("Unexepted error: Check your first number")
    }
    return 0
}

func initicalize() {
    print(version)
    print("Wellcome to SimpleCalc")
    print("Select operation type: +, -, *, /")
    let operandInt:String = readLine() ?? ""
    print("Furst number:")
    let n1:String = readLine() ?? ""
    print("Second number:")
    let n2:String = readLine() ?? ""
    print("Your expression: " + n1 + " " + operandInt + " " + n2)
    switch operandInt{
    case "+":
        print("Result: " + String(plus(number1: n1, number2: n2)))
    case "-":
        print("test -")
    case "*":
        print("test *")
    case "/":
        print("test /")
    default:
        print("Input Error")
    }
}

initicalize()
