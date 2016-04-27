//
//  main.swift
//  LoopTest
//
//  Created by Seven on 16/4/25.
//  Copyright © 2016年 Seven. All rights reserved.
//

/**
*  循环＝＝数组、字典
*
*  @param "Hello  <#"Hello description#>
*  @param World!" <#World!" description#>
*
*  @return <#return value description#>
*/
import Foundation

print("Hello, World!")

var arr = [String]()

/**
*  for循环添加item
*/
for index in 0...100{
arr.append("item\(index)")
}
print(arr)

/**
*  for循环数组取值
*/
for valu in arr{
print(valu)
}

var i = 0

/**
*  while 循环数组取值
*/
while i < arr.count{
print(arr[i])
    i++
}

var dic = ["name":"wq","age":"123"];
/**
*  for循环字典取值，前面key，后面value
*/
for (key,value) in dic{
print(key,value)
}


