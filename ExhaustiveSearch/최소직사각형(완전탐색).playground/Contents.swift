func solution(_ sizes:[[Int]]) -> Int {
    var array = [[Int]]()
    
    for i in sizes{
        //가로세로에 상관없이 큰수와 작은수로 정렬
        array.append(i.sorted{$0 > $1})
    }
    
    var minwidthsize = sizes[0].first
    var minheightsize = sizes[0].min()
    for j in array{
        if j.first! > minwidthsize!{
            minwidthsize = j.first
        }
        
        if j.min()! > minheightsize!{
            minheightsize = j.min()
        }
    }

    return minwidthsize! * minheightsize!
}
