func solution(_ strings:[String], _ n:Int) -> [String] {
    
    let result = strings.sorted{ a, b -> Bool in
        //a의 char과 b의 char을 비교할 변수를 생성한다.
        var achar = a[a.index(a.startIndex, offsetBy: n)]
        var bchar = b[b.index(b.startIndex, offsetBy: n)]
        
        //a와 c의 ch가 같다면 문자 전체를 비교해 정렬
        if achar == bchar{
            return a < b
        }else{
            //다르다면 char을 기준을 정렬
            return achar < bchar
        }
    }
    
    return result
}

solution(["sun", "bed", "car"]    , 1)
