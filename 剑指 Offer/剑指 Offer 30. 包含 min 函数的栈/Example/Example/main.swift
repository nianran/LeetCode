class MinStack {

    var stack: [(Int, Int)] = []

    /** initialize your data structure here. */
    init() {
        stack.reserveCapacity(500)
    }
    
    func push(_ x: Int) {
        if let last = stack.last?.1 {
            stack.append((x, Swift.min(last, x)))
        } else {
            stack.append((x, x))
        }
    }
    
    func pop() {
        stack.popLast()
    }
    
    func top() -> Int {
        return stack.last!.0
    }
    
    func min() -> Int {
        return stack.last!.1
    }
}

