func solution(_ s:String, _ n:Int) -> String {
    let loweralphabet = Array("abcdefghijklmnopqrstuvwxyz")
    let upperalphabet = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    var result = ""
    for char in s{
        if char == " "{
            result += " "
        }
        if upperalphabet.contains(char){
            var idx = upperalphabet.firstIndex(of: char)! + n
            idx = idx % 26
            result += String(upperalphabet[idx])
        }
        if loweralphabet.contains(char){
            var idx = loweralphabet.firstIndex(of: char)! + n
            idx = idx % 26
            result += String(loweralphabet[idx])
        }
    }
    return result
}

solution("abcdefghijklmnopqrstuvwxyz", 1)
