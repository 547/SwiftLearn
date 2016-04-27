//
//  main.swift
//  StringAddValue
//
//  Created by Seven on 16/4/25.
//  Copyright © 2016年 Seven. All rights reserved.
//
/**
*  字符串拼接
*
*  @param "Hello  <#"Hello description#>
*  @param World!" <#World!" description#>
*
*  @return <#return value description#>
*/
import Foundation

print("Hello, World!")

 ///   字符串与字符串的拼接
var str = " 第一种方法字符串和字符串的拼接："  + "同类型"
 ///  拼接数字＝＝＝也可以拼接其它类型的数据
let num = 12
var str1 = "第二种方法字符串和非字符串的拼接，\(num)"

print(str,str1)