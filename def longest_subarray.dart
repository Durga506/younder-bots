def longest_subarray_with_sum_k(arr, K):
    N = len(arr)
    start = 0
    current_sum = 0
    max_length = 0

    for end in range(N):
        current_sum += arr[end]

        while current_sum > K:
            current_sum -= arr[start]
            start += 1

        max_length = max(max_length, end - start + 1)

    return max_length
