//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

print("Hello, World!")
class Solution{
    func kClosest(_ points: [[Int]], _ K: Int) -> [[Int]] {
        var result = [[Int]]()
        let points = points.sorted(){ _sqrt($0) < _sqrt($1)}
        for i in 0..<K{
            result.append(points[i])
        }
        return result
    }
    func _sqrt(_ points:[Int])->Int{
        return Int(pow(Double(points[0]), 2) + pow(Double(points[1]), 2))
    }
}
