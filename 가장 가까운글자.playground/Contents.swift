import Foundation

func solution(_ s:String) -> [Int] {
    
    var result = [Int]()
    //단어와 단어가 최근 등장한 인덱스를 저장할 딕셔너리 배열
    var word_dictionary = [String: Int]()
    
    for charidx in 0..<s.count{
        let now = s.index(s.startIndex, offsetBy: charidx)
        
        //처음 나온거라면
        if word_dictionary.contains(){ $0.key == String(s[now])} == false{
            //-1을 추가해주고
            result.append(-1)
            //단어의 인덱스를 저장해준다
            word_dictionary.updateValue(charidx, forKey: String(s[now]))
            //나온적이 있다면
        }else if word_dictionary.contains(){ $0.key == String(s[now])} == true{
            //결과 배열에 현재인덱스 - 최근 등장한 인덱스
            result.append(charidx - word_dictionary[String(s[now])]!)
            //현재 글자의 인덱스를 갱신해준다.
            word_dictionary.updateValue(charidx, forKey: String(s[now]))
        }
        
        
    }
    return result
}

solution("abcda")
