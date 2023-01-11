import Foundation

let data = [1, 2, 4]

func solution(_ common:[Int]) -> Int {
    let idx = common.count - 1
    let epoch = common[idx] - common[idx - 1]
    print((common[idx] + common[idx - 2]) / 2)
    
    return Double(common[idx] + common[idx - 2]) / 2 == Double(common[idx - 1]) ? common[idx] + epoch : (common[idx] / common[idx - 1]) * common[idx]
}

//풀이
//a, b, c가 있을경우
//(a + c) / 2 = b 일경우 등차수열, 아닐 경우 등비수열이다.
//
//등차수열일 경우 (c - b) + c 가 다음값이 될 것이고
//
//등비수열일 경우 (c / b) * c 가 다음값이다.
//
//
//배열의 마지막 인덱스는 idx = common.count - 1이다.
//
//Double 처리를 해주는 이유는 만약 common = [1, 2, 4] 등비수열 일경우 (4 + 1) / 2은  2.5인데  Double 처리를 해주지 않으면 2로, 등차수열로 처리되게 됨 2.5 != 2라는 것을 정확히 전달하기 위해 Double 처리를 한다.

solution(data)
