//
//  main.swift
//  Example
//
//  Created by 红纸 on 2020/10/26.
//

import Foundation

func replaceSpace(_ s: String) -> String {
    return s.replacingOccurrences(of: " ", with: "%20")
}

print(replaceSpace("hello world"))
