


func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    var arr = Array.init(repeating: 0, count: 101)
    for i in nums {
        arr[i] += 1
    }
    arr
    for i in 1...nums.count-1 {
        arr[i] += arr[i-1]
    }
    var res = [Int]()
    for i in nums {
        res.append(i == 0 ? 0 : arr[i-1])
    }
    return res
}

smallerNumbersThanCurrent([8,1,2,2,3])
smallerNumbersThanCurrent([6,5,4,8])
smallerNumbersThanCurrent([7,7,7,7])
