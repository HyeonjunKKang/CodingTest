import Foundation

let arr = [["ICN", "JFK"], ["HND", "IAD"], ["JFK", "HND"]]

func solution(_ tickets:[[String]]) -> [String] {
    //알파벳 순서가 앞서는 경로를 return하기 위해 도착지를 기준으로 오름차순 정렬
    let sortedticket = tickets.sorted{ $0[1] < $1[1] }
    //해당 티켓을 사용했는지 확인하기위해 visited배열을 사용한다.
    var visited = [Bool](repeating: false, count: tickets.count)
    
    //방문한 경로를 저장해야 하므로 배열을 사용
    var result = [String]()
    
    //DFS
    func dfs(_ start: String){
        //경로는 항상 티켓의 수 + 1입니다. 티켓이 4장일 때 공항의 개수는 5개를 경유합니다
        //4개의 경로가 추가되었을 때 마지막 공항을 추가해주고 return해야합니다.
        if result.count == sortedticket.count{
            result.append(start)
            return
        }
        
        for i in 0..<sortedticket.count{
            //아직 방문하지 않은 공항이며 출발지가 현재 위치한 공항일 때
            if sortedticket[i][0] == start && !visited[i]{
                //해당 티켓의 사용을 기록해줍니다
                visited[i] = true
                //현재 위치한 공항을 결과에 추가해주고
                result.append(start)
                //현재 위치한 공항의 도착지를 DFS로 보내줍니다.
                dfs(sortedticket[i][1])
                
                //경로가 이미 완성된 경우
                if result.count == sortedticket.count + 1{
                    return
                }
                
                //해당 경로로 모든 도시를 방문할 수 없다면 경로를 취소하고 다른 도시를 방문해봅니다.
                result.removeLast()
                visited[i] = false
            }
        }
    }
    
    dfs("ICN")
    return result
}

print(solution(arr))
