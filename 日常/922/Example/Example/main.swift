//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

print("Hello, World!")
class Solution {
    func sortArrayByParityII(_ A: [Int]) -> [Int] {
        var even:[Int] = [], odd:[Int] = [], result:[Int] = []
        
        for num in A {
            
            if num % 2 == 0 {
                even.append(num)
            }else if num % 2 == 1 {
                odd.append(num)
            }
            
        }
        
        for i in 0..<even.count {
            result.append(even[i])
            result.append(odd[i])
        }
        
        return result

    }
}
