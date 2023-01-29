import Foundation

let data = ".... . .-.. .-.. ---"

func solution(_ letter:String) -> String {
    
    let morse = [".-": "a" , "-...": "b", "-.-.":"c" ,"-..":"d",".":"e","..-.":"f",
                     "--.":"g","....":"h","..":"i", ".---":"j", "-.-":"k",".-..":"l",
                     "--":"m","-.":"n","---":"o",".--.":"p","--.-":"q",".-.":"r",
                     "...":"s","-":"t","..-":"u","...-":"v",".--":"w","-..-":"x",
                     "-.--":"y","--..":"z"]
    var result = ""
    for i in letter.split(separator: " "){
        result += morse[String(i)]!
    }
    return result
}

print(solution(data))
