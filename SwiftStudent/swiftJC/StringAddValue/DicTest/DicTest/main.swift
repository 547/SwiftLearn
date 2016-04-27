//
//  main.swift
//  DicTest
//
//  Created by Seven on 16/4/25.
//  Copyright © 2016年 Seven. All rights reserved.
//

/**
*  字典
*
*  @param "Hello  <#"Hello description#>
*  @param World!" <#World!" description#>
*
*  @return <#return value description#>
*/
import Foundation

print("Hello, World!")
 ///   字面量创建字典，前面key，后面value
var dic = ["name":"wq","age":"123"]

//dic = ["type":"unknow"]///直接覆盖原值

dic["type"]  = "unknow"///添加值前面的是key，后面的是value

let name = dic["name"]///获取指定key的值

print(dic["name"],name)
