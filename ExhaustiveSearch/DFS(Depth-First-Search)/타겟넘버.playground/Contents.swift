import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    
    var count = 0
    
    func dfs(index: Int, sum: Int){
        if index == numbers.count{    //예) index가 5가 되었다면 sum의 계산은 index 4까지 되었을것
            if sum == target{
                count += 1
            }
            //더 이상 재귀가 불가능하므로(자식 노드가 없으므로)
            return
        }
                
        dfs(index: index + 1, sum: sum + numbers[index])
        dfs(index: index + 1, sum: sum - numbers[index])
    }
    
    dfs(index: 0, sum: 0)
    
    return count
}
