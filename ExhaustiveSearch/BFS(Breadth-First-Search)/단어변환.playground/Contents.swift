import Cocoa

import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    
    //한 가지 단어가 다른지 판단하는 함수
    func diffOne(_ word1: String, _ word2: String) -> Bool{
        var count = 0
    
        if(word1.count != word2.count){
            return false
        }
        
        let arrword1 = Array(word1)
        let arrword2 = Array(word2)
        
        for i in 0..<arrword1.count{
            if arrword1[i] != arrword2[i]{
                count += 1
            }
            
            //다른 단어의 개수가 1개 이상이면 false를 return합니다/
            if count > 1{
                return false
            }
        }
        
        return true
    }
    
    //target 단어가 words에 포함되어있지 않으면 0을 return 합니다.
    if !words.contains(target){
        return 0
    }
    
    //배열을 만들어 큐로 사용합니다.
    var queue = [String]()
    queue.append(begin)
    
    var visited = Array(repeating: false, count: words.count)
    var count = 0
    
    //큐가 비어있지 않은 동안 반복합니다.
    while !queue.isEmpty{
        let now = queue.popLast()!
        if(now == target) { break }
                
        for idx in 0..<words.count{
            if !visited[idx]{
                if diffOne(now, words[idx]){
                    queue.append(words[idx])
                    visited[idx] = true
                }
            }
        }
        count += 1
        
    }
    
    
    return count
}
