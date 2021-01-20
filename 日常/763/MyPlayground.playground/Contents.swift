import Foundation

func partitionLabels(_ S: String) -> [Int] {
    var resize = [Int]()
    for i in 0...S.count-1 {
        resize[Int(S[S.index(S.startIndex, offsetBy: i)].asciiValue ?? 97) - 97] = i
    }
    
    
    var start = 0
    var end = 0
    var res = [Int]()
    for s in S {
        end += 1
        if start == end || end == S.count {
            continue
        }
        let a = S[S.index(S.startIndex, offsetBy: 1)]
        if a == s || end == S.count - 1 {
            end += 1
            res.append(end-start)
            start = end
        }
    }
    return res
}

partitionLabels("ababcbacadefegdehijhklij")
