//
//  main.swift
//  GetCount
//
//  Created by Hongzhi Zhao on 2017/3/28.
//  Copyright © 2017年 GuaHao. All rights reserved.
//

import Foundation

print("Hello, World!")

class Test: NSObject {
    func getNumberCount() {
        var number = 0
        let filePath:String = "/Users/hongzhizhao/Documents/WeiYi/Code/WYPatient"
        

        let fileManager = FileManager.default
        
        var subArray = fileManager.subpaths(atPath: filePath)
        let headerArray = NSArray.init(array: subArray!, copyItems: false).pathsMatchingExtensions(["h"])
        let impArray = NSArray.init(array: subArray!, copyItems: false).pathsMatchingExtensions(["m"])
        
        var newHArray = Array<String>.init()
        var newMArray = Array<String>.init()
        
        
        for item in headerArray {
            let name = item.components(separatedBy: "/").last?.components(separatedBy: ".").first
            newHArray.append(name!)
        }
        for item in impArray {
            let name = item.components(separatedBy: "/").last?.components(separatedBy: ".").first
            newMArray.append(name!)
        }
        
        
        var countArray: Dictionary = [Int: Int]()
        
        for item in newHArray {
            let length = item.lengthOfBytes(using: String.Encoding.ascii)
            var count = countArray[length]
            if count == nil {
                count = 0
            }
            count = count! + 1
            countArray.updateValue(count!, forKey: length)
        }
        
        
        NSLog("asd");
        
    }
}

Test.init().getNumberCount()
