//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation
//String扩展
//extension String {
//    //subscript函数可以检索数组中的值
//    //直接按照索引方式截取指定索引的字符
//    subscript (_ i: Int) -> Character {
//        //读取字符
//        get {return self[index(startIndex, offsetBy: i)]}
//
//        //修改字符
//        set
//        {
//            //转换为字符数组
//            var arr:[Character] = Array(self)
//            arr[i] = newValue
//            self = String(arr)
//        }
//    }
//
//    //String转ASCII整数值(定义小写为整数值)
//    public var ascii: Int {
//        return Int(unicodeScalars.first?.value ?? 0)
//    }
//}

// 1. 中心扩展法
//

//    let arr = Array(s.utf8)
//    var start = 0
//    var end = 0
//    for i in 0..<s.count {
//        let len1 = expandAround(left: i, right: i, arr: arr)
//        let len2 = expandAround(left: i, right: i+1, arr: arr)
//        let len = max(len1, len2)
//        if len > (end - start) {
//            start = i - (len - 1) / 2;
//            end = i + len / 2;
//        }
//    }
//    return String(s[s.index(s.startIndex, offsetBy: start)...s.index(s.startIndex, offsetBy: end)])
//}
//
//
//func expandAround(left: Int, right: Int, arr: [String.UTF8View.Element]) -> Int {
//    var _l = left
//    var _r = right
//    while _l >= 0 && _r < arr.count && arr[_l] == arr[_r]  {
//        _l -= 1
//        _r += 1
//    }
//    return _r - _l - 1
//}



// DP
func longestPalindrome(_ s: String) -> String {
    let _s = Array(s.utf8)
    var dp = Array.init(repeating: Array.init(repeating: false, count: s.count), count: s.count)
    var ans = ""
    for l in 0..<s.count {
        for i in 0..<(s.count-l) {
            let j = i + l
            if l == 0 {
                dp[i][j] = true
            } else if (l == 1) {
                dp[i][j] = _s[i] == _s[j]
            } else {
                dp[i][j] = _s[i] == _s[j] && dp[i + 1][j - 1]
            }
            if dp[i][j] && l + 1 > ans.count  {
                ans = String(s[s.index(s.startIndex, offsetBy: i)...s.index(s.startIndex, offsetBy: j)])
            }
        }
    }
    return ans
}

print(longestPalindrome("asddsadsfd"))
print(longestPalindrome("babad"))
