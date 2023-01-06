import Foundation

let incap = 4
let n = 5
let indeliveries = [1, 0, 3, 1, 2]
let inpuckups = [0, 3, 0, 4, 0]

func solution(_ cap:Int, _ n:Int, _ deliveries:[Int], _ pickups:[Int]) -> Int64 {
    
    var deliveriesdata = deliveries
    var pickupsdata = pickups
    var moves = 0
    
    deliveriesdata
    pickupsdata
    
    var amountdeliver = deliveriesdata.reduce(0){$0 + $1}
    var amountpickup = pickupsdata.reduce(0){$0 + $1}
    
    var truck = 0
    
    for i in 4...0{
        if truck < cap{
            let tmp = cap - truck
            deliveriesdata[i] = deliveriesdata[i] - tmp
            truck + tmp
        }
        print(truck)
    }
    
    return 0
}

print(solution(incap, n, indeliveries, inpuckups))
