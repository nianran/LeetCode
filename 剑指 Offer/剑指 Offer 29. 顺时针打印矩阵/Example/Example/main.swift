//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation


func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    
    var _matrix = matrix
    var res = [Int]()
    
    while ((_matrix.first?.first) != nil) {
        // Top
        if let topArr = _matrix.first {
            res.append(contentsOf: topArr)
            _matrix.removeFirst()
        }
        // Right
        if _matrix.count > 0 {
            for i in 0..._matrix.count-1 {
                if let last = _matrix[i].last {
                    res.append(last)
                    _matrix[i].removeLast()
                }
            }
        }
        
        // Bottom
        if let bottomArr = _matrix.last {
            res.append(contentsOf: bottomArr.reversed())
            _matrix.removeLast()
        }
        
        // Left
        if _matrix.count > 0 {
            for i in (0..._matrix.count-1).reversed() {
                if let last = _matrix[i].first {
                    res.append(last)
                    _matrix[i].removeFirst()
                }
            }
        }
    }
    return res
}

print(spiralOrder([[1,2,3],[4,5,6],[7,8,9]]))
print(spiralOrder([[1,2,3,4],[5,6,7,8],[9,10,11,12]]))
print(spiralOrder([[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]))
