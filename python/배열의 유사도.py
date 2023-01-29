ss1 = ["a", "b", "c"]	
ss2 = ["com", "b", "d", "p", "c"]	
def solution(s1, s2):
    answer = 0
    for i in s1:
        if s2.__contains__(i):
            answer += 1

    return answer

print(solution(ss1,ss2))