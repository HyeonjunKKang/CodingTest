data = "abdc"
def solution(s):
    answer = []
    for i in s:
         if s.count(i) == 1:
             answer += i

    answer.sort()
    return ''.join(answer)

print(solution(data))