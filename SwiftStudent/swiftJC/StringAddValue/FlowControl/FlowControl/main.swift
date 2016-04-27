//
//  main.swift
//  FlowControl
//
//  Created by Seven on 16/4/25.
//  Copyright © 2016年 Seven. All rights reserved.
//

/**
*  流程控制＝＝＝可选变量的特点
*
if条件语句的使用
*  @param "Hello  <#"Hello description#>
*  @param World!" <#World!" description#>
*
*  @return <#return value description#>
*/
import Foundation

print("Hello, World!")


for index in 0...100
{
    if index%2 == 0{
    print(index)
    }
}
/// 可选变量的特点
var name:String? = "数据类型后面打了？的就是说明是一个可选变量"
//name = nil
if let na = name{
print("这个判断语句只有在可选变量name不为空的时候才执行，为nil的时候是不执行的",na)
}