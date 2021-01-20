//
//  main.swift
//  406
//
//  Created by Hongzhi Zhao on 2020/11/16.
//

import Foundation

func reconstructQueue(_ people: [[Int]]) -> [[Int]] {
    let sorted = people.sorted { (p1, p2) -> Bool in
        return p1[0] * 1200 - p1[1] > p2[0] * 1200 - p2[1]
    }
    var result = [[Int]]()
    for current in sorted {
        let k = current[1]
        if k < result.count {
            result.insert(current, at: k)
        } else {
            result.append(current)
        }
    }
    return result
}

//print(reconstructQueue([[7,0], [4,4], [7,1], [5,0], [6,1], [5,2]]))
print(reconstructQueue([[9,0],[7,0],[1,9],[3,0],[2,7],[5,3],[6,0],[3,4],[6,2],[5,2]]))

