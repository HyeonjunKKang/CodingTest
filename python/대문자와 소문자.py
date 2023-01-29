data = "abCdEfghIJ"
def solution(my_string):
    answer = ""
    for i in my_string:
        answer += i.upper() if i.islower()  else i.lower()

    return answer

print(solution(data))