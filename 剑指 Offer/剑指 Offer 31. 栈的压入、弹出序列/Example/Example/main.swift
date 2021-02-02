






func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
    if pushed.count == 0 || popped.count == 0 {
        return true
    }
    var left = 0
    var right = 0
    var arr = [Int]()
    while left < pushed.count || right < popped.count {
        if left < pushed.count && pushed[left] == popped[right] {
            left += 1
            right += 1
        } else {
            if let last = arr.last, last == popped[right] {
                right += 1
                arr.removeLast()
            } else {
                if left < pushed.count {
                    arr.append(pushed[left])
                    left += 1
                } else {
                    break
                }
            }
        }
    }
    return arr.count == 0
}

print(validateStackSequences([1,2,3,4,5], [4,3,3,2,1]))
