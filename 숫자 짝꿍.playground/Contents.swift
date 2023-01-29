import Foundation

func solution(_ X:String, _ Y:String) -> String {
    
    var answer = ""
    
    //각 문자의 숫자의 개수를 리턴하는 함수
    func count_numbr(_ str: String) -> [Int]{
        var arr = [Int](repeating: 0, count: 10)
        for num in str{
            if let number = Int(String(num)){
                arr[number] += 1
            }
        }
        return arr
    }
    
    //각 문자의 개수를 세서 반복된 횟수만큼 num을 추가해서 결과를 도출함
    var x_num_count = count_numbr(X)
    var y_num_count = count_numbr(Y)
    
    var result = ""
    
    //높은 숫자를 만들어야 하기때문에 9 -> 0
    for i in (0...9).reversed(){
        //최 소의 횟수를 반복해야함 2, 0이라면 짝꿍이 아니기 때문에, 2, 1이면 1번만 사용할 수 있기때문에
        let count = min(x_num_count[i], y_num_count[i])
        for _ in 0..<count{
            result += String(i)
        }
    }

    //전체가 비어있다면 -1 리턴
    if result == ""{
        return "-1"
    }else if result.count == result.filter{$0 == "0"}.count { //전체가 0으로 이루어져 있다면 0을 리턴
        return "0"
    }else{
        return result
    }
}


solution("100", "2345")
