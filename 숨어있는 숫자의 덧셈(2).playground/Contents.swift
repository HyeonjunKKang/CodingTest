import Foundation

func solution(_ my_string:String) -> Int {
    var answer = 0
    var number_string = ""
    
    for i in 0..<my_string.count{
        //my_string[i]가 숫자라면
        if let tmp = Int(String(my_string[my_string.index(my_string.startIndex, offsetBy: i)])){
            number_string += String(tmp) //number_string에 추가
        }else{
            //아니라면(숫자가 입력되다 끊기면) number_string에 저장된 문자를
            if let willsumnumber = Int(number_string){
                //더해줌
                answer += willsumnumber
                number_string = ""
            }
        }
    }
    //마지막이 숫자로 끝나서 number_string이 비어있지 않은경우
    if number_string != ""{
        answer += Int(number_string)!
    }
    return answer
}
