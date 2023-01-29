arr = [1, 8, 3]
def solution(array):
    answer = []
    max = 0
    for i in range(0, len(array), 1):
        if array[i] > max:
            max = array[i]
            answer = [max, i]


    return answer

print(solution(arr))