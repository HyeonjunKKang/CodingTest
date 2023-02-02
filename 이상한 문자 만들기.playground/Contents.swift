func solution(_ s:String) -> String {
    
    var idx = 0
    var result = ""
    for char in s{
        //공백인 경우 공백을 추가하고 인덱스를 0
        if char == " "{
            result += " "
            idx = 0
        }else{
            if idx % 2 == 0{ //짝수인 경우 대문자추가, idx + 1
                result += char.uppercased()
                idx += 1
            }else{ //홀수인 경우 소문자 추가, idx + 1
                result += char.lowercased()
                idx += 1
            }
        }
        
    }
    
    return result
}

solution("try hello world")
