import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    //a개를 가져다 주면 b병을 준다. n개를 가져다주면 몇병을 받을 수 있는지
    //현재 병 수 = n개
    var nowbottle = n
    var count = 0
    
    //현재 가진 병의 수가 a개 이상일 동안
    while nowbottle >= a{
        //받게 되는 병은 현재 가지고 있는 병을 a개당 b개씩 준다
        count += (nowbottle / a) * b
        //현재 콜라병의 수 =  (현재 가지고 있는 병) - (마트에 갖다줄 병의 수) + 마트에 갖다줘서 받을 병의 수
        nowbottle = nowbottle - (nowbottle / a * a) + ((nowbottle / a) * b)
    }
    return count
}
