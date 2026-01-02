import Foundation

public let version:String = "v0.2"

func calcFunc(number1:String, number2:String, operand:String) -> Int{
    switch operand {
    case "+":
        if let n1 = Int(number1){
            if  let n2 = Int(number2){
                return n1+n2
            }else{
                print("Unexepted error: Check your second number")
            }
        }else{
            print("Unexepted error: Check your first number")
        }
    case "-":
        if let n1 = Int(number1){
            if  let n2 = Int(number2){
                return n1-n2
            }else{
                print("Unexepted error: Check your second number")
            }
        }else{
            print("Unexepted error: Check your first number")
        }
    default: print("Unexepted error")
    }
 return 0
}

func initicalize() {
    print("Wellcome to SimpleCalc " + version)
    print("Select operation type: +, -, *, /")
    let operandInt:String = readLine() ?? ""
    print("Furst number:")
    let n1:String = readLine() ?? ""
    print("Second number:")
    let n2:String = readLine() ?? ""
    print("Your expression: " + n1 + " " + operandInt + " " + n2 + " = " + String(calcFunc(number1: n1, number2: n2, operand:operandInt)))
}
initicalize()
