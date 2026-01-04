import Foundation

public let version:String = "v0.44"

func calcFunc(_ n1:Int?, _ n2:Int?, _ operand:String) -> Int?{
    if let n1 = n1, let n2 = n2{
        switch operand {
        case "+":
            return n1+n2
        case "-":
            return n1-n2
        case "*":
            return n1*n2
        case "/":
            if n2 == 0{
                print("Error: Division by zero")
                return nil
            }else{
                return n1/n2
            }
        default:
            print("Unexepted error")
            return nil
        }
    }else{
        print("Error: nil")
    }
    return nil
}

func getValueFromConsole() -> Int?{
    print("Enter number:")
    let n1:String = readLine() ?? ""
    if let n1 = Int(n1){
        return n1
    }else{
        print("Unexepted error: Check your number")
        exit(0)
    }
}

func getOperandFromConsole() -> String{
    print("Select operation type: +, -, *, /")
    let operand:String = readLine() ?? ""
    return operand
}

func showResult( _ operand:String, _ n1:Int?, _ n2:Int?){
    let result  = calcFunc(n1, n2, operand)
    if let result = result{
        print("Your expresion: " + String(n1!) + " " + operand + " " + String(n2!) + " = " + String(result))
    }
}


print("Wellcome to SimpleCalc " + version)
showResult(getOperandFromConsole(),getValueFromConsole(), getValueFromConsole())

