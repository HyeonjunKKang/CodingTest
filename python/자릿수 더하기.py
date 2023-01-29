data = 930211

def solution(n):
    answer = 0
    inn = str(n)
    for i in inn: 
        answer += int(i)
    
    return answer

print(solution(data))